#!/bin/bash

export ZSH=$HOME/.dotfiles

echo -n 'Update packages? [Y/n]: '
read update

echo -n 'Install general packages? [Y/n]: '
read general

if [[ "$update" != "n" ]]; then
    echo 'updating packages...'
    sudo apt-get update --yes
    sudo apt-get upgrade --yes
fi

if [[ "$general" != "n" ]]; then
    echo 'install new packages...'
    sudo apt-get install --yes build-essential tmux git
fi
