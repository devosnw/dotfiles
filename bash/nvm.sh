#
# nvm specific configuration
#

__which_quietly nvm || return 0

export NVM_DIR="$HOME/.nvm"
__which_quietly brew && __bash_source_if_present "$(brew --prefix)/opt/nvm/nvm.sh"

