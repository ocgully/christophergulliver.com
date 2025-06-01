#!/bin/bash

# Create base directories
mkdir -p public/images/{projects,garden,books,articles,social,companies}

# Function to create a colored placeholder image with text
create_placeholder() {
  local path=$1
  local text=$2
  local color=$3
  local size=${4:-"800x600"}
  
  # Create the directory if it doesn't exist
  mkdir -p "$(dirname "public/$path")"
  
  # Use convert to create a placeholder image
  convert -size $size canvas:$color -fill white -gravity center \
    -pointsize 40 -annotate 0 "$text" "public/$path"
  
  echo "Created: public/$path"
}

echo "All placeholder images have been created!"
