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
# make sure latest docker-compose is executed
alias docker-compose="/usr/local/bin/docker-compose"

# remount home so VPN client can work with ecryptfs
alias mountforpia="sudo mount -o remount,exec,suid -i ~"
