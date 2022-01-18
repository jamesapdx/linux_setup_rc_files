#!/usr/bin/env bash

# With this script you can simply cd into a directory and type "pycharm" to fire it up

# Usage: ./setup_pycharm.sh 
#        use the newest pycharm in the current folder if no param specified

# created by: Jim Shaffer

PYCHARM_PATH="~/bin/pycharm-community-2020.2.4"

# remove existing .bashrc entry
sed -i '/PYCHARM SETUP/,/END PYCHARM SETUP/d' ~/.bashrc

# add to .bashrc
echo "modify ~/.bashrc"
cat <<EOF >> ~/.bashrc

# PYCHARM SETUP ######################
pycharm() {
    if [[ -z \$1 ]]; then
        WD=\$PWD
    else
        WD=\$1
    fi
    $PYCHARM_PATH/bin/pycharm.sh \$WD >/dev/null 2>&1 &
}
# END PYCHARM SETUP ##################
EOF

# usage
echo ""
echo "Usage:"
echo "  > cd /my_share/my_worktree"
echo "  > pycharm"
echo "or:"
echo "  > pycharm [<dir>]"
echo ""
echo "!!!!!Please execute the following NOW:"
echo "  > source ~/.bashrc"
echo ""
