#
# direnv specific configuration
#

__which_quietly direnv || return 0

eval "$(direnv hook bash)"

