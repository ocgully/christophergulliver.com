#!/bin/bash

# Script to download book covers from Open Library based on ISBN
# Usage: ./download-book-covers.sh

# Create the output directory if it doesn't exist
mkdir -p public/images/books

# Function to download a book cover from Open Library
download_cover() {
  local isbn=$1
  local output_file=$2
  local size=${3:-"M"}  # Default size is Medium (M), can also be S or L
  
  if [ -z "$isbn" ] || [ -z "$output_file" ]; then
    echo "Error: ISBN or output file not provided"
    return 1
  fi
  
  # Construct the Open Library URL
  local url="https://covers.openlibrary.org/b/isbn/${isbn}-${size}.jpg"
  
  echo "Downloading cover for ISBN $isbn to $output_file"
  curl -s "$url" -o "public$output_file"
  
  # Check if the download was successful
  if [ $? -eq 0 ] && [ -s "public$output_file" ]; then
    # Check if the image is the default "no cover available" image (typically very small)
    local filesize=$(wc -c < "public$output_file")
    if [ "$filesize" -lt 1000 ]; then
      echo "Warning: Cover for ISBN $isbn may be a placeholder (small file size: $filesize bytes)"
    else
      echo "Successfully downloaded cover for ISBN $isbn"
    fi
  else
    echo "Failed to download cover for ISBN $isbn"
    return 1
  fi
  
  return 0
}

# Read the books.json file
BOOKS_JSON_FILE="src/data/books.json"
if [ ! -f "$BOOKS_JSON_FILE" ]; then
  echo "Error: Books JSON file not found at $BOOKS_JSON_FILE"
  exit 1
fi

# Parse the JSON file to extract ISBNs and cover image paths
# Using jq to parse JSON
if ! command -v jq &> /dev/null; then
  echo "Error: jq is required but not installed. Please install jq first."
  echo "You can install it with: brew install jq"
  exit 1
fi

# Extract book data from JSON
echo "Extracting book data from $BOOKS_JSON_FILE..."
BOOKS_DATA=$(jq -r '.books[] | select(.isbn != null) | .isbn + "," + .coverImage' "$BOOKS_JSON_FILE")

if [ -z "$BOOKS_DATA" ]; then
  echo "No books with ISBN found in $BOOKS_JSON_FILE"
  exit 1
fi

# Process each book
echo "Starting download of book covers..."
echo "$BOOKS_DATA" | while IFS=, read -r isbn cover_path; do
  download_cover "$isbn" "$cover_path" "L"
done

echo "Book cover download process completed!"
