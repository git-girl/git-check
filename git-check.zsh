#!/usr/bin/env zsh

__git_check_read_origin_and_fetch() { 
  # returns 124 on timeout to $?
  # returns 127 on command not known to $?
  timeout 3 git fetch 

  retval=$?

  if [[ $retval != 0 ]]; then 
    notify-send "Git Fetch & Diff" "couldn't run git fetch (3sec timeout), check your ssh keys, or internet connection"
  fi

  return $retval
}

__run_and_report_git_diff() { 

  git_diff=$(git diff @{u} HEAD --name-only)
  if [[ $git_diff != "" ]]; then
    notify-send "Git Fetch & Diff" "Found these files on origin different to local: \n $git_diff"
  else 
    notify-send "Git Fetch & Diff" "Clean: no diff to origin isn't ahead of local"
  fi  
}

__git_main() { 
  __git_check_read_origin_and_fetch

  access=$?

  if [ $access -eq 0 ]; then 
    __run_and_report_git_diff >/dev/null & disown
  fi
}

__git_check_hook_fn() { 
  if [[ -d './.git' ]]; then
    __silent_background __git_main
  fi
}

# thanks to this stackoverflow answer 
# https://stackoverflow.com/a/51061046
__silent_background() {
    { 2>&3 "$@"& } 3>&2 2>/dev/null
    disown &>/dev/null  # Prevent whine if job has already completed
}
# add with: 
# add-zsh-hook chpwd git_check_hook_fn
