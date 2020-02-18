#!/usr/bin/env sh

# Install the dotfiles
# =====> Stow config
rm ~/.gitconfig ~/.hyper.js ~/.skhdrc ~/.yabairc
rm ~/Library/Application\ Support/VSCodium/User/settings.json
rm ~/Library/Application\ Support/VSCodium/User/keybindings.json
stow ~/.dotfiles/config
# =====> Generate .zshrc, .tmux.conf and init.vim
~/.dotfiles/generate.sh
# Notify the user
terminal-notifier -title 'Installing' -message 'Dotfiles have been linked.'

