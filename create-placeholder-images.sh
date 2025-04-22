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

# Project images
# create_placeholder "/images/projects/wheelman.jpg" "Wheelman" "#3498db"
# create_placeholder "/images/projects/stranglehold2.jpg" "Stranglehold 2" "#e74c3c"
# create_placeholder "/images/projects/ultimate-alliance-2.jpg" "Ultimate Alliance 2" "#9b59b6"
# create_placeholder "/images/projects/toystory3.jpg" "Toy Story 3" "#2ecc71"
# create_placeholder "/images/projects/bloodstone.jpg" "Blood Stone 007" "#34495e"
# create_placeholder "/images/projects/goldeneye.jpg" "GoldenEye 007" "#f1c40f"
# create_placeholder "/images/projects/inside-out.jpg" "Inside Out" "#1abc9c"
# create_placeholder "/images/projects/wheres-my-mickey.jpg" "Where's My Mickey" "#e67e22"
# create_placeholder "/images/projects/dodopop.jpg" "Dodopop" "#d35400"
# create_placeholder "/images/projects/checkout-challenge.jpg" "Checkout Challenge" "#16a085"

# New projects
create_placeholder "/images/projects/etoll-clip.jpg" "eToll Clip" "#3498db"
create_placeholder "/images/projects/oscommerce-verisign.jpg" "OsCommerce Verisign Plugin" "#e74c3c"
create_placeholder "/images/projects/nobis-command-center.jpg" "Nobis Command Center" "#9b59b6"

# Disney games
create_placeholder "/images/projects/stack-rabbit.jpg" "Stack Rabbit" "#27ae60"
create_placeholder "/images/projects/lost-light.jpg" "Lost Light" "#f39c12"
create_placeholder "/images/projects/dont-break-the-bank.jpg" "Don't Break the Bank" "#8e44ad"
create_placeholder "/images/projects/nemos-aqua-pop.jpg" "Nemo's Aqua Pop" "#2980b9"
create_placeholder "/images/projects/launchpad-framework.jpg" "Launch Pad Framework" "#c0392b"

# Garden project images
# create_placeholder "/images/garden/ai-game-design.jpg" "AI Game Design" "#8e44ad"
# create_placeholder "/images/garden/vr-education.jpg" "VR Education" "#2980b9"
# create_placeholder "/images/garden/blockchain-gaming.jpg" "Blockchain Gaming" "#c0392b"
# create_placeholder "/images/garden/ar-books.jpg" "AR Books" "#27ae60"
# create_placeholder "/images/garden/sustainable-tech.jpg" "Sustainable Tech" "#7f8c8d"
# create_placeholder "/images/garden/mobile-streaming.jpg" "Mobile Streaming" "#f39c12"
# create_placeholder "/images/garden/ai-writing.jpg" "AI Writing" "#1abc9c"

# Book cover images
create_placeholder "/images/books/harry-potter-1.jpg" "Harry Potter 1" "#3498db" "400x600"
create_placeholder "/images/books/harry-potter-2.jpg" "Harry Potter 2" "#3498db" "400x600"
create_placeholder "/images/books/harry-potter-3.jpg" "Harry Potter 3" "#3498db" "400x600"
create_placeholder "/images/books/harry-potter-4.jpg" "Harry Potter 4" "#3498db" "400x600"
create_placeholder "/images/books/harry-potter-5.jpg" "Harry Potter 5" "#3498db" "400x600"
create_placeholder "/images/books/harry-potter-6.jpg" "Harry Potter 6" "#3498db" "400x600"
create_placeholder "/images/books/harry-potter-7.jpg" "Harry Potter 7" "#3498db" "400x600"
create_placeholder "/images/books/wool.jpg" "Wool" "#e74c3c" "400x600"
create_placeholder "/images/books/shift.jpg" "Shift" "#e74c3c" "400x600"
create_placeholder "/images/books/dungeon-crawler-carl.jpg" "Dungeon Crawler Carl" "#9b59b6" "400x600"
create_placeholder "/images/books/eye-of-the-world.jpg" "Eye of the World" "#2ecc71" "400x600"
create_placeholder "/images/books/great-hunt.jpg" "Great Hunt" "#2ecc71" "400x600"
create_placeholder "/images/books/dragon-reborn.jpg" "Dragon Reborn" "#2ecc71" "400x600"
create_placeholder "/images/books/shadow-rising.jpg" "Shadow Rising" "#2ecc71" "400x600"
create_placeholder "/images/books/fires-of-heaven.jpg" "Fires of Heaven" "#2ecc71" "400x600"
create_placeholder "/images/books/pawn-of-prophecy.jpg" "Pawn of Prophecy" "#34495e" "400x600"
create_placeholder "/images/books/queen-of-sorcery.jpg" "Queen of Sorcery" "#34495e" "400x600"
create_placeholder "/images/books/magicians-gambit.jpg" "Magician's Gambit" "#34495e" "400x600"
create_placeholder "/images/books/castle-of-wizardry.jpg" "Castle of Wizardry" "#34495e" "400x600"
create_placeholder "/images/books/enchanters-end-game.jpg" "Enchanters' End Game" "#34495e" "400x600"
create_placeholder "/images/books/redemption-of-althalus.jpg" "Redemption of Althalus" "#34495e" "400x600"
create_placeholder "/images/books/clean-architecture.jpg" "Clean Architecture" "#3498db" "400x600"
create_placeholder "/images/books/multipliers.jpg" "Multipliers" "#e74c3c" "400x600"
create_placeholder "/images/books/cpp-programming-language.jpg" "C++ Programming Language" "#9b59b6" "400x600"
create_placeholder "/images/books/world-war-z.jpg" "World War Z" "#2ecc71" "400x600"
create_placeholder "/images/books/the-hobbit.jpg" "The Hobbit" "#f39c12" "400x600"
create_placeholder "/images/books/fellowship-of-the-ring.jpg" "Fellowship of the Ring" "#f39c12" "400x600"
create_placeholder "/images/books/two-towers.jpg" "Two Towers" "#f39c12" "400x600"
create_placeholder "/images/books/return-of-the-king.jpg" "Return of the King" "#f39c12" "400x600"
create_placeholder "/images/books/we-are-legion.jpg" "We Are Legion" "#1abc9c" "400x600"
create_placeholder "/images/books/for-we-are-many.jpg" "For We Are Many" "#1abc9c" "400x600"
create_placeholder "/images/books/all-these-worlds.jpg" "All These Worlds" "#1abc9c" "400x600"
create_placeholder "/images/books/heavens-river.jpg" "Heaven's River" "#1abc9c" "400x600"
create_placeholder "/images/books/project-hail-mary.jpg" "Project Hail Mary" "#3498db" "400x600"
create_placeholder "/images/books/the-martian.jpg" "The Martian" "#e74c3c" "400x600"
create_placeholder "/images/books/ready-player-one.jpg" "Ready Player One" "#9b59b6" "400x600"
create_placeholder "/images/books/ready-player-two.jpg" "Ready Player Two" "#9b59b6" "400x600"
create_placeholder "/images/books/speaker-for-the-dead.jpg" "Speaker for the Dead" "#2ecc71" "400x600"
create_placeholder "/images/books/enders-game.jpg" "Ender's Game" "#34495e" "400x600"
create_placeholder "/images/books/light-of-other-days.jpg" "Light of Other Days" "#f39c12" "400x600"
create_placeholder "/images/books/hero-of-ages.jpg" "Hero of Ages" "#1abc9c" "400x600"
create_placeholder "/images/books/cryptonomicon.jpg" "Cryptonomicon" "#3498db" "400x600"
create_placeholder "/images/books/diamond-age.jpg" "Diamond Age" "#e74c3c" "400x600"
create_placeholder "/images/books/rhythm-of-war.jpg" "Rhythm of War" "#9b59b6" "400x600"
create_placeholder "/images/books/snow-crash.jpg" "Snow Crash" "#2ecc71" "400x600"
create_placeholder "/images/books/oathbringer.jpg" "Oathbringer" "#34495e" "400x600"
create_placeholder "/images/books/way-of-kings.jpg" "Way of Kings" "#f39c12" "400x600"
create_placeholder "/images/books/wise-mans-fear.jpg" "Wise Man's Fear" "#1abc9c" "400x600"
create_placeholder "/images/books/name-of-the-wind.jpg" "Name of the Wind" "#3498db" "400x600"
create_placeholder "/images/books/well-of-ascension.jpg" "Well of Ascension" "#e74c3c" "400x600"
create_placeholder "/images/books/final-empire.jpg" "Final Empire" "#9b59b6" "400x600"
create_placeholder "/images/books/necronomicon.jpg" "Necronomicon" "#2ecc71" "400x600"
create_placeholder "/images/books/dracula.jpg" "Dracula" "#34495e" "400x600"
create_placeholder "/images/books/calamity.jpg" "Calamity" "#f39c12" "400x600"
create_placeholder "/images/books/firefight.jpg" "Firefight" "#1abc9c" "400x600"
create_placeholder "/images/books/steelheart.jpg" "Steelheart" "#3498db" "400x600"
create_placeholder "/images/books/morning-star.jpg" "Morning Star" "#e74c3c" "400x600"
create_placeholder "/images/books/golden-son.jpg" "Golden Son" "#9b59b6" "400x600"
create_placeholder "/images/books/red-rising.jpg" "Red Rising" "#2ecc71" "400x600"
create_placeholder "/images/books/the-egg.jpg" "The Egg" "#34495e" "400x600"
create_placeholder "/images/books/braving-britannia.jpg" "Braving Britannia" "#f39c12" "400x600"
create_placeholder "/images/books/sprint.jpg" "Sprint" "#1abc9c" "400x600"
create_placeholder "/images/books/carrot-principle.jpg" "Carrot Principle" "#3498db" "400x600"
create_placeholder "/images/books/project-to-product.jpg" "Project to Product" "#e74c3c" "400x600"
create_placeholder "/images/books/making-work-visible.jpg" "Making Work Visible" "#9b59b6" "400x600"
create_placeholder "/images/books/edgedancer.jpg" "Edgedancer" "#2ecc71" "400x600"
create_placeholder "/images/books/building-storybrand.jpg" "Building a StoryBrand" "#34495e" "400x600"
create_placeholder "/images/books/mitosis.jpg" "Mitosis" "#f39c12" "400x600"
create_placeholder "/images/books/lullaby.jpg" "Lullaby" "#1abc9c" "400x600"
create_placeholder "/images/books/blue-ocean-shift.jpg" "Blue Ocean Shift" "#3498db" "400x600"
create_placeholder "/images/books/i-am-legend.jpg" "I Am Legend" "#e74c3c" "400x600"
create_placeholder "/images/books/startup-way.jpg" "Startup Way" "#9b59b6" "400x600"
create_placeholder "/images/books/lean-startup.jpg" "Lean Startup" "#2ecc71" "400x600"
create_placeholder "/images/books/how-to-win-friends.jpg" "How to Win Friends" "#34495e" "400x600"
create_placeholder "/images/books/give-and-take.jpg" "Give and Take" "#f39c12" "400x600"
create_placeholder "/images/books/leaders-eat-last.jpg" "Leaders Eat Last" "#1abc9c" "400x600"
create_placeholder "/images/books/devops-handbook.jpg" "DevOps Handbook" "#3498db" "400x600"
create_placeholder "/images/books/rework.jpg" "Rework" "#e74c3c" "400x600"
create_placeholder "/images/books/unsouled.jpg" "Unsouled" "#9b59b6" "400x600"
create_placeholder "/images/books/soulsmith.jpg" "Soulsmith" "#9b59b6" "400x600"
create_placeholder "/images/books/blackflame.jpg" "Blackflame" "#9b59b6" "400x600"
create_placeholder "/images/books/skysworn.jpg" "Skysworn" "#9b59b6" "400x600"
create_placeholder "/images/books/ghostwater.jpg" "Ghostwater" "#9b59b6" "400x600"
create_placeholder "/images/books/underlord.jpg" "Underlord" "#9b59b6" "400x600"
create_placeholder "/images/books/uncrowned.jpg" "Uncrowned" "#9b59b6" "400x600"
create_placeholder "/images/books/wintersteel.jpg" "Wintersteel" "#9b59b6" "400x600"
create_placeholder "/images/books/bloodline.jpg" "Bloodline" "#9b59b6" "400x600"
create_placeholder "/images/books/reaper.jpg" "Reaper" "#9b59b6" "400x600"
create_placeholder "/images/books/dreadgod.jpg" "Dreadgod" "#9b59b6" "400x600"
create_placeholder "/images/books/waybound.jpg" "Waybound" "#9b59b6" "400x600"
create_placeholder "/images/books/frankenstein.jpg" "Frankenstein" "#2ecc71" "400x600"
create_placeholder "/images/books/the-giver.jpg" "The Giver" "#34495e" "400x600"
create_placeholder "/images/books/traction.jpg" "Traction" "#f39c12" "400x600"
create_placeholder "/images/books/staff-engineer.jpg" "Staff Engineer" "#1abc9c" "400x600"
create_placeholder "/images/books/team-topologies.jpg" "Team Topologies" "#3498db" "400x600"

# Social images
# create_placeholder "/images/social/project-celebration.jpg" "Project Celebration" "#2ecc71"

# Company images
# create_placeholder "/images/companies/id-software.png" "id Software" "#9b59b6"
# create_placeholder "/images/companies/disney.png" "Disney" "#9b59b6"
# create_placeholder "/images/companies/n-space.png" "n-Space" "#9b59b6"
#create_placeholder "/images/companies/midway.png" "Midway" "#9b59b6"
#create_placeholder "/images/companies/geotech.png" "Geotech" "#9b59b6"

echo "All placeholder images have been created!"
