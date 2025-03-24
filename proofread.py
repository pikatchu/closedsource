import os
import sys
import openai

# Check command-line arguments
if len(sys.argv) != 2:
    print("Usage: python proofread.py <api_key>")
    sys.exit(1)

# Get API key and target language from arguments
OPENAI_API_KEY = sys.argv[1]

# Configure OpenAI API key
client = openai.OpenAI(api_key=OPENAI_API_KEY)

# Directory settings
INPUT_DIR = "book"

def proofread_text(last, text):
    """Uses OpenAI API to proofread text while preserving markdown formatting."""
    response = client.chat.completions.create(
        model="gpt-4",  # Changed from "gpt-4" to "gpt-4-turbo"
        messages=[
            {"role": "system", "content": f"You are a professional proof reader. Check the grammar and spelling of everying in the following text. If there are no errors, simplify write OK. Nothing else. Do not try to improve the narrative. As long as the text is correct, simply say OK. For context, this is the previous section of the text: {last}"},
            {"role": "user", "content": text}
        ]
    )
    return response.choices[0].message.content

def proofread_markdown_files():
    files = sorted(os.listdir(INPUT_DIR))
    last = ""
    """Reads .md files, proofreads them, and saves the proofreadd versions."""
    for filename in files:
        if filename.endswith(".md"):
            input_path = os.path.join(INPUT_DIR, filename)

            with open(input_path, "r", encoding="utf-8") as file:
                content = file.read()

            print(f"Proofreading {filename}...")

            status = proofread_text(last, content);
            last = content

            print(f"✔ Checked: {filename} -> {status}")

if __name__ == "__main__":
    proofread_markdown_files()
