#
# brew specific configuration
#

__which_quietly brew || return 1

eval "$(brew shellenv)"

for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
  [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
done

# add brew include dirs for better compilation
export CFLAGS="-I$(brew --prefix)/include -L$(brew --prefix)/lib"
# use updated openssl libs if available
if [[ -d "$(brew --prefix)/opt/openssl" ]]; then
  export LDFLAGS="-I$(brew --prefix)/opt/openssl/include -L$(brew --prefix)/opt/openssl/lib"
fi

