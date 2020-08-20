#!/bin/sh
export GITHUB_TOKEN = "a1e6b91ac731b422c68d4f84454fbe6efcac2d97"

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

printf "\033[0;32mReinitialize Theme...\033[0m\n"

if [ -d themes ]; then
  rm -Rf themes
fi

mkdir themes
cd themes && git clone https://github.com/themefisher/meghna-hugo.git && cd ..

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

git init \
  && git config --global user.email "vinzjobard@gmail.com" \
  && git config --global user.name "winael" \
  && git add .

# Commit changes

msg="rebuilding site $(date)"

if [ -n "$*" ]; then
	msg="$*"
fi

printf "\033[0;32m${msg}...\033[0m\n"

git commit -m "$msg"

# Push source and build repos

printf "\033[0;32mSet Origin to https://github.com/winael/winael.github.io...\033[0m\n"
git remote add origin https://${GITHUB_TOKEN}:x-oauth-basic@github.com/winael/winael.github.io.git

printf "\033[0;32mPush Origin to master on https://github.com/winael/winael.github.io...\033[0m\n"
git push origin master -f
