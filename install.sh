#!/bin/bash

set -e

echo "🚀 Installing dotfiles..."

# Install Homebrew if not installed
if ! command -v brew >/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Brew packages
echo "📦 Installing Brew packages..."
brew bundle --file=~/dotfiles/Brewfile

# Install GNU Stow if not installed
if ! command -v stow >/dev/null; then
  echo "📦 Installing GNU Stow..."
  brew install stow
fi

# Symlink configs using Stow
echo "🔗 Linking config files with Stow..."
cd ~/dotfiles
stow -t ~ fd ghostty git rg ssh starship zsh

# Load launchd job
echo "⏱️ Setting up auto-sync..."
cp ~/dotfiles/launchd/com.dotfiles.sync.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.dotfiles.sync.plist

echo "✅ Setup complete!"
