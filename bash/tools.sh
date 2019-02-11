#
# common tool setup
#

# completion setup for `bash`
__which_quietly brew && __bash_source_if_present "$(brew --prefix)/etc/bash_completion"
# completion setup for `pyenv`
__which_quietly pyenv && eval "$(pyenv init -)"
# if set, the history list is appended to the file named by the value of the
# HISTFILE variable when the shell exits, rather than overwriting the file.
shopt -s histappend

