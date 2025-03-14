#!/bin/bash

# Set default DPI (Change this to any value between 72-150)
DPI=96

# Check if ImageMagick is installed
if ! command -v mogrify &> /dev/null; then
    echo "Error: ImageMagick is not installed. Install it using:"
    echo "      sudo apt update && sudo apt install imagemagick -y"
    exit 1
fi

# Ensure at least one PNG exists
if ! ls *.png 1> /dev/null 2>&1; then
    echo "No PNG files found in the current directory."
    exit 1
fi

# Create a backup directory
mkdir -p backup
cp *.png backup/

echo "Converting PNG files to $DPI DPI..."

# Convert all PNG files in the directory
for file in *.png; do
    mogrify -density $DPI -units PixelsPerInch "$file"
    echo "Converted: $file"
done

echo "Done! Original images are backed up in the 'backup' folder."
