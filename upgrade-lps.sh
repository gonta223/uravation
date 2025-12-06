#!/bin/bash

# Script to upgrade remaining LP files with scroll animations
# This adds CSS animations, fade-in classes, and fixed CTA to each file

FILES=(
    "lp-fractal-pro.html"
    "lp-fractal.html"
    "lp-import-car.html"
    "lp-juku-mobile.html"
    "lp-juku-simple.html"
    "lp-lead-gen.html"
    "lp-nationals.html"
    "lp-portfolio-min.html"
    "lp-portfolio-simple.html"
    "lp-print.html"
    "lp-realestate.html"
    "lp-retro.html"
    "lp-saas-allinone.html"
    "lp-salon-modern.html"
    "lp-social.html"
    "lp-soft.html"
    "lp-standard-set.html"
    "lp-studio.html"
    "lp-the-business.html"
    "lp-this-startup.html"
)

echo "Starting LP upgrade process..."
echo "Total files to upgrade: ${#FILES[@]}"
echo

for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        echo "Processing: $file"

        # Create backup
        cp "$file" "${file}.backup"

        # Note: Manual editing required for each file
        # 1. Add CSS before </style>
        # 2. Add fade-in classes to cards/sections
        # 3. Add fixed-cta and script before </body>

        echo "  - Backup created: ${file}.backup"
    else
        echo "  - File not found: $file"
    fi
done

echo
echo "Backup files created. Manual editing required for each file."
echo "Follow the upgrade pattern from lp-event-mobile.html and lp-event-simple.html"
