#
# brew specific configuration
#

__which_quietly brew || return 0

eval "$(brew shellenv)"

# completion setup for `bash`
__bash_source_if_present "$(brew --prefix)/etc/bash_completion"

for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
  __bash_source_if_present "$COMPLETION"
done

# add brew include dirs for better compilation
export CFLAGS="-I$(brew --prefix)/include -L$(brew --prefix)/lib"
# use updated openssl libs if available
if [[ -d "$(brew --prefix)/opt/openssl" ]]; then
  export LDFLAGS="-I$(brew --prefix)/opt/openssl/include -L$(brew --prefix)/opt/openssl/lib"
fi

