# Generates a table of all 256 colors and lists the number to output in that
# color.
function colortable() {
  local pad
  local number

  for row in {0..15}; do
    for col in {0..15}; do
      if [[ "${col}" -eq 0 ]]; then
        pad=''
      else
        pad=' '
      fi
      number=$(( 16 * row + col ))

      echo -en "${pad}\033[38;5;${number}m"
      printf "%3d" "${number}"
      echo -en "\033[m "
    done
    echo
  done
  
  cat <<'EOL'

Escape sequences (use with `echo -e`):
* Foreground: \033[38;5;${number}m
* Background: \033[48;5;${number}m
* Reset:      \033[m
EOL
}

