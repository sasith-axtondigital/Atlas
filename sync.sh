#!/bin/bash

cd ~/dotfiles || exit

echo "🔄 Syncing dotfiles..."

# Update Brewfile
brew bundle dump --force --file=~/dotfiles/Brewfile

# Git sync
git add .
git diff --cached --quiet || git commit -m "auto-sync $(date)"
git push origin main

echo "✅ Sync complete"
