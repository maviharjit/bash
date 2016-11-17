# author Harjit Mavi
# License GPL

## functions
# vialias to edit .bash_aliases file
function vialias {
	vi ~/.bash_aliases
}

# nualias to source the .bash_aliases file, so new aliases can take effect
function nualias {
	. ~/.bash_aliases
}

# display proper usage of function
function usage () {
	echo "Usage: "$1 
}

# function to show a config file without any annoying comments 
function nocomments () {
	if [ -z $1 ]; then
		usage " <filename>"
		return
	fi 

	cat $1 | grep -v \# | sed '/^$/ d'
}

## my aliases
alias docker-compose="/usr/local/bin/docker-compose"
