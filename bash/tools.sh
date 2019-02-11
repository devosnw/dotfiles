#
# common tool setup
#

__which_quietly brew && __bash_source_if_present "$(brew --prefix)/etc/bash_completion"
__which_quietly pyenv && eval "$(pyenv init -)"
shopt -s histappend

