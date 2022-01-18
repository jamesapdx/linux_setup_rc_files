#!/usr/bin/env bash

touch ~/.bashrc
echo "modify ~/.bashrc"

# remove existing .bashrc entry
sed -i '/MY CUSTOM SETUP/,/END MY CUSTOM SETUP/d' ~/.bashrc

cat <<EOF >> ~/.bashrc

# MY CUSTOM SETUP ######################

# setup history for multiple terminal saves, save after every command
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PS1="\[\033[01;31m\]\u@:\W:$ \[\033[00m\]"
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# increase history size
HISTSIZE=10000
HISTFILESIZE=10000

# stop checking repos everytime using dnf, same as yum -C, too slow
alias dnf='dnf --cacheonly'

# END MY CUSTOM SETUP ######################

EOF

echo ""
echo "!!!!!Please execute the following NOW:"
echo "  > source ~/.bashrc"
echo ""
