#
# node specific configuration
#

__which_quietly node || return 0

export PATH="./node_modules/.bin:$PATH"

