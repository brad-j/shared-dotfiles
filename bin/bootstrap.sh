#!/usr/bin/env bash

install_zsh() {
  if [[ "$SHELL" == *"zsh"* ]]; then
    echo "ZSH is already installed"
  else
    sudo apt install zsh -y
    chsh -s $(which zsh)
  fi
}

install_zsh

install_kitty() {
  if [[ -x "$(command -v kitty)" ]]; then
    echo "Kitty is already installed"
  else
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
  fi
}

install_kitty

install_neovim() {
  if [[ -x "$(command -v nvim)" ]]; then
    echo "Neovim is already installed"
  else
    sudo apt install neovim -y
  fi
}

install_neovim

install_bat() {
  if [[ -x "$(command -v bat)" ]]; then
    echo "Bat is already installed"
  else
    sudo apt install bat -y
  fi
}

install_bat

install_eza() {
  if [[ -x "$(command -v eza)" ]]; then
    echo "Eza is already installed"
  else
    sudo apt install gpg -y
    sudo apt install eza -y
  fi
}

install_eza

install_stow() {
  if [[ -x "$(command -v stow)" ]]; then
    echo "Stow is already installed"
  else
    sudo apt install stow -y
  fi
}

install_stow

clone_dotfiles() {
  if [[ -d "$HOME/shared-dotfiles" ]]; then
    echo "Dotfiles already cloned"
  else
    git clone https://github.com/brad-j/shared-dotfiles.git 
  fi
}

clone_dotfiles

stow_dotfiles() {
  mkdir -p $HOME/.config
  cd shared-dotfiles
  stow . -t $HOME/.config 
}

stow_dotfiles

install_omz() {
  if [[ -d "$HOME/.oh-my-zsh" ]]; then
    echo "Oh My Zsh is already installed"
  else
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
}
