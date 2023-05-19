#!/usr/bin/env zsh
 
source $(dirname "$0")/git-check.zsh
add-zsh-hook chpwd __git_check_hook_fn
