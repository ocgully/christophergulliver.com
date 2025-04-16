#!/bin/bash

# Create base directories
mkdir -p public/images/{projects,garden,books,articles,social}

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

# Project images
create_placeholder "/images/projects/wheelman.jpg" "Wheelman" "#3498db"
create_placeholder "/images/projects/stranglehold2.jpg" "Stranglehold 2" "#e74c3c"
create_placeholder "/images/projects/ultimate-alliance-2.jpg" "Ultimate Alliance 2" "#9b59b6"
create_placeholder "/images/projects/toystory3.jpg" "Toy Story 3" "#2ecc71"
create_placeholder "/images/projects/bloodstone.jpg" "Blood Stone 007" "#34495e"
create_placeholder "/images/projects/goldeneye.jpg" "GoldenEye 007" "#f1c40f"
create_placeholder "/images/projects/inside-out.jpg" "Inside Out" "#1abc9c"
create_placeholder "/images/projects/wheres-my-mickey.jpg" "Where's My Mickey" "#e67e22"
create_placeholder "/images/projects/dodopop.jpg" "Dodopop" "#d35400"
create_placeholder "/images/projects/checkout-challenge.jpg" "Checkout Challenge" "#16a085"

# Garden project images
create_placeholder "/images/garden/ai-game-design.jpg" "AI Game Design" "#8e44ad"
create_placeholder "/images/garden/vr-education.jpg" "VR Education" "#2980b9"
create_placeholder "/images/garden/blockchain-gaming.jpg" "Blockchain Gaming" "#c0392b"
create_placeholder "/images/garden/ar-books.jpg" "AR Books" "#27ae60"
create_placeholder "/images/garden/sustainable-tech.jpg" "Sustainable Tech" "#7f8c8d"
create_placeholder "/images/garden/mobile-streaming.jpg" "Mobile Streaming" "#f39c12"
create_placeholder "/images/garden/ai-writing.jpg" "AI Writing" "#1abc9c"

# Book cover images
create_placeholder "/images/books/innovators-dilemma.jpg" "Innovator's Dilemma" "#3498db" "400x600"
create_placeholder "/images/books/thinking-fast-slow.jpg" "Thinking Fast and Slow" "#e74c3c" "400x600"
create_placeholder "/images/books/zero-to-one.jpg" "Zero to One" "#9b59b6" "400x600"
create_placeholder "/images/books/lean-startup.jpg" "Lean Startup" "#2ecc71" "400x600"
create_placeholder "/images/books/creativity-inc.jpg" "Creativity Inc." "#34495e" "400x600"

# Article images
create_placeholder "/images/articles/game-development.jpg" "Game Development" "#3498db"
create_placeholder "/images/articles/tech-leadership.jpg" "Tech Leadership" "#e74c3c"
create_placeholder "/images/articles/entrepreneurship.jpg" "Entrepreneurship" "#9b59b6"

# Social images
create_placeholder "/images/social/project-celebration.jpg" "Project Celebration" "#2ecc71"

echo "All placeholder images have been created!"
