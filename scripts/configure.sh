#!/usr/bin/env bash

echo '[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt' >> ~/.bashrc

cp -R ../dotfiles/.config ~/.config
