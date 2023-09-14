
# functions
#

# source a shell file if it exists
__bash_source_if_present() {
  local shell_file="$1"
  [[ -f "$shell_file" ]] && [[ -r "$shell_file" ]] && source "$shell_file"
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
  git status 2>/dev/null | tail -n1 | grep --extended-regexp 'nothing to commit, working (tree|directory) clean' >/dev/null
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
    color="$COLOR_CHARTEUSE1"
  else
    color="$COLOR_INDIAN_RED1"
  fi

  echo -en "[± $color$branch$COLOR_RESET]"
}

# check if the os name matches the given name
__is_os() {
  local os_name="$1"
  [[ "$(uname -s)" == "$os_name" ]]
}

# log a timestamped message
__log() {
  local msg="$1"
  local color="$2"
  local reset=
  if [[ -n "$color" ]]; then
    reset="$COLOR_RESET"
  fi
  local fmt=+%Y-%m-%dT%H:%M:%S.%3N
  if __is_os Darwin && [[ "$(which date)" = /bin/date ]]; then
    fmt=${fmt%????} # OSX strftime doesn't have support nanosecond precision
  fi

  echo -e "[$(date $fmt)] ${color}${msg}${reset}"
}

# log an error level message
__log_error() {
  __log "$*" "$COLOR_RED"
}

# log an info level message
__log_info() {
  __log "$*" "$COLOR_WHITE"
}

# visual prompt indicator that we are in a python virtual env
__python_venv_prompt() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo -en "[🐍 ${COLOR_GREEN}$(basename "$VIRTUAL_ENV")${COLOR_RESET}]"
  else
    echo -n ''
  fi
}

# visual prompt indicator that we are in an SSH session
__ssh_prompt() {
  if [[ -n "$SSH_CLIENT" ]] || [[ -n "$SSH_TTY" ]]; then
    echo -n '[📡]'
  else
    echo -n ''
  fi
}

# do `which` without any output
__which_quietly() {
  local program="$1"
  which "$program" >/dev/null 2>&1
}

