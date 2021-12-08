#
# brew specific configuration
#

__which_quietly brew || return 0

eval "$(brew shellenv)"

if [[ -f "$HOMEBREW_PREFIX/etc/bash_completion" ]]; then
  __bash_source_if_present "${HOMEBREW_PREFIX}/etc/bash_completion"
else
  for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
    __bash_source_if_present "$COMPLETION"
  done
fi

# add brew include dirs for better compilation
export CFLAGS="-I${HOMEBREW_PREFIX}/include -L${HOMEBREW_PREFIX}/lib"
# use updated openssl libs if available
if [[ -d "${HOMEBREW_PREFIX}/opt/openssl" ]]; then
  export LDFLAGS="-I${HOMEBREW_PREFIX}/opt/openssl/include -L${HOMEBREW_PREFIX}/opt/openssl/lib"
fi

