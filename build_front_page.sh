#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "Error: ImageMagick is not installed."
    echo "Install it using:"
    echo "  sudo apt install imagemagick  # Debian/Ubuntu"
    echo "  brew install imagemagick       # macOS"
    echo "  sudo dnf install ImageMagick   # Fedora"
    exit 1
fi

# Set paths
INPUT_IMAGE="./assets/images/front_page.png"
OUTPUT_IMAGE="./assets/images/epub_cover.jpg"

# Define cover dimensions
COVER_WIDTH=1600
COVER_HEIGHT=2560

# Font settings
TITLE_FONT_SIZE=120
SUBTITLE_FONT_SIZE=80
AUTHOR_FONT_SIZE=60
FONT_COLOR="white"
FONT="./fonts/Orbitron-Bold.ttf"

# Temporary resized image
TEMP_IMAGE="/tmp/resized_front_page.png"

# Create a black background and place the resized image in the center
convert "$INPUT_IMAGE" -resize 1400x1400 \
    -gravity center -background black -extent ${COVER_WIDTH}x${COVER_HEIGHT} "$TEMP_IMAGE"

# Add title (higher position)
convert "$TEMP_IMAGE" -gravity north -fill "$FONT_COLOR" -font "$FONT" \
    -pointsize $TITLE_FONT_SIZE -annotate +0+150 "CLOSED SOURCE" \
    -pointsize $SUBTITLE_FONT_SIZE -annotate +0+350 "The Tale of the Companions" \
    -gravity south -pointsize $AUTHOR_FONT_SIZE -annotate +0+100 "by Julien Verlaguet" \
    "$OUTPUT_IMAGE"

# Clean up temp file
rm "$TEMP_IMAGE"

echo "✅ ePub cover created: $OUTPUT_IMAGE"
