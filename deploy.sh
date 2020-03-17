#!/bin/sh

# If a command fails then the deply stops

set -e

printf "\033[0;32mGenerating offline content...\033[0m\n"

# Create a tmp directory if not exist

if [ ! -d tmp ]; then
	mkdir -p tmp
fi

# Copy content to tmp directory, change path to static image
# and gerenate epub and pdf

for FILE in $(ls content/french/blog); do
	cp content/*/*/$FILE tmp/
	sed -i 's/\/images/static\/images/g' tmp/$FILE
	pandoc tmp/$FILE -o static/epub/${FILE%.md}.epub
	pandoc tmp/$FILE -o static/pdf/${FILE%.md}.pdf --latex-engine=xelatex
done

# Remove tmp directory

rm -Rf tmp

# Update Git submodules

printf "\033[0;32mUpdate submodules project...\033[0m\n"


git submodule update --remote themes/meghna-hugo

# Deploy updates

printf "\033[0;32mDeploying updates to Github...\033[0m\n"

# Reinitialize output

if [ -d public ]; then
  rm -Rf public
fi

# Build the project

hugo -D

# Go to public folder

cd public

# Add changes to git

git init && git add .

# Commit changes

msg="rebuilding site $(date)"

if [ -n "$*" ]; then
	msg="$*"
fi

git commit -m "$msg"

# Push source and build repos

git remote add origin https://github.com/Winael/winael.github.io.git

git push origin master -f
