#
# functions
#

# source a shell file if it exists
__bash_source_if_present() {
  local shell_file="$1"
  [[ -f "$shell_file" ]] && source "$shell_file"
}

# name of current git branch
__git_branch_name() {
  git branch 2>/dev/null | grep '^*' | colrm 1 2
}

# are we in a git repository?
__git_in_repo() {
  [[ -d '.git' ]] || git rev-parse --git-dir >/dev/null 2>&1
}

# is the repository clean
__git_is_clean() {
  git status 2>/dev/null | tail -n1 | grep 'nothing to commit, working tree clean' >/dev/null
}

# construct our git prompt with colors
__git_prompt() {
  if ! __git_in_repo; then
    echo -n ''
    return
  fi

  local color=
  local branch="$(__git_branch_name)"

  if __git_is_clean; then
    color="$COLOR_GREEN"
  else
    color="$COLOR_RED"
  fi

  echo -n " on $color$branch$COLOR_RESET"
}

# do `which` without any output
__which_quietly() {
  local program="$1"
  which "$program" >/dev/null 2>&1
}
