#!/bin/bash

echo "⚙️ Configuring macOS..."

# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Auto-hide dock
defaults write com.apple.dock autohide -bool true

# Faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

killall Dock

echo "✅ macOS configured"
