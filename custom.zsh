# There is no help function in zsh
# for example: help pwd
function help { bash -c "help $@" }

OS_NAME=$(uname)

if [ "${OS_NAME}" = "Darwin" ]; then
    alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
    alias git=hub
    
    alias code='cd ~/Code'
    alias gh='cd ~/Code/gh'
    alias til='cd ~/Code/gh/til'
    alias cookbook='cd ~/Code/gh/cookbook'
    alias dotfiles='cd ~/Code/gh/dotfiles'
    
    alias tmp='cd ~/Temp'
elif [ "${OS_NAME}" = "Linux" ]; then
	echo Linux
else
	echo Unknown
fi

