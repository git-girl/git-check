#!/usr/bin/env zsh

# Git Check Zsh Plugin
# Written by Git Girl (git-girl) 
# github.com/git-girl/git-check

# This file sources the actual code and adds the chpwd hook to zsh on startup
 
source $(dirname "$0")/git-check.zsh
add-zsh-hook chpwd __git_check_hook_fn
