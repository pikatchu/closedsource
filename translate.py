import os
import sys
import openai

# Supported languages and their codes for directory naming
SUPPORTED_LANGUAGES = {
    "french": "fr",
    "spanish": "es",
    "german": "de",
    "italian": "it",
}

# Check command-line arguments
if len(sys.argv) != 3:
    print("Usage: python translate_md.py <api_key> <language>")
    print("Supported languages: french, spanish, german, italian")
    sys.exit(1)

# Get API key and target language from arguments
OPENAI_API_KEY = sys.argv[1]
target_language = sys.argv[2].lower()

if target_language not in SUPPORTED_LANGUAGES:
    print(f"Error: Unsupported language '{target_language}'. Choose from: {', '.join(SUPPORTED_LANGUAGES.keys())}")
    sys.exit(1)

# Configure OpenAI API key
client = openai.OpenAI(api_key=OPENAI_API_KEY)

# Directory settings
INPUT_DIR = "book"
OUTPUT_DIR = f"book_{SUPPORTED_LANGUAGES[target_language]}"

# Ensure the output directory exists
os.makedirs(OUTPUT_DIR, exist_ok=True)

def translate_text(text, source_lang="English", target_lang="French"):
    """Uses OpenAI API to translate text while preserving markdown formatting."""
    response = client.chat.completions.create(
        model="gpt-4-turbo",  # Changed from "gpt-4" to "gpt-4-turbo"
        messages=[
            {"role": "system", "content": f"You are a professional translator. Translate from {source_lang} to {target_lang} while preserving markdown formatting. If the targetted language has a T-V distinction, if an adult speaks to a teenager, they would use T. And teens use T between them. For example, Elias should address Leo with T. Same for Leo's mother, she should address him using T."},
            {"role": "user", "content": text}
        ]
    )
    return response.choices[0].message.content

def translate_markdown_files():
    """Reads .md files, translates them, and saves the translated versions."""
    for filename in os.listdir(INPUT_DIR):
        if filename.endswith(".md"):
            input_path = os.path.join(INPUT_DIR, filename)
            output_path = os.path.join(OUTPUT_DIR, filename)

            with open(input_path, "r", encoding="utf-8") as file:
                content = file.read()

            print(f"Translating {filename} to {target_language}...")

            translated_content = translate_text(content, target_lang=target_language.capitalize())

            with open(output_path, "w", encoding="utf-8") as file:
                file.write(translated_content)

            print(f"✔ Translated: {filename} -> {output_path}")

if __name__ == "__main__":
    translate_markdown_files()
