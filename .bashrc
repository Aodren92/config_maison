#Petit Prompt 

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
if [[ $EUID == 0 ]] ; then
	  PS1="$RED\u [ $NORMAL\w$RED ]# $NORMAL"
else
	  PS1="$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
fi
unset RED GREEN NORMAL


source ~/.config/.bashrc_aliases
