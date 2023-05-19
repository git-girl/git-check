#!/usr/bin/env zsh
 
source ./git-check.zsh
add-zsh-hook chpwd __git_check_hook_fn
