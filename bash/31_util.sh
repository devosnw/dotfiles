# Collection of small utility functions

# If we're offline, sometimes we just wanna ping until we're back online
function ping_until_up() {
  local site="$1"
  if [[ -z "$site" ]]; then
    site='www.google.com'
  fi

  __log_info "Start pinging till up site=$site"
  while true; do
    __log_info "Pinging site=$site"
    if ping -c 1 -t 1 "$site" >/dev/null 2>&1; then
      __log_info '🎉 Back online'
      break
    fi
    sleep 1
  done
}

# Loops until the command fails. Useful for things like flake finding.
function repeat_till_failure() {
  while "$@"; do :; done
}

