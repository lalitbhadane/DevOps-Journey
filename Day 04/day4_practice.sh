#!/bin/bash
# ============================================
# Day 4 – Process, Alias, Users, and History
# Practiced and tested on July 11, 2025
# ============================================

echo "Starting Day 4 Practice Script..."

# --------------------------------------------
# Process Management (ps, pstree)
# --------------------------------------------
echo -e "\n>>> PROCESS MANAGEMENT <<<"
ps
ps a
ps -a
ps T
ps -A
ps -ef
ps aux
ps aux --forest
ps -f -u syslog
ps -f -C cron
ps -f -p 1
ps -f --ppid 1
ps -f -p 2543,8843,3456
pstree

# --------------------------------------------
# Aliases
# --------------------------------------------
echo -e "\n>>> ALIASES <<<"
alias lh='ls -alh'
alias
unalias lh
unalias ll
echo "alias lh='ls -alh'" >> ~/.bashrc
source ~/.bashrc
echo "alias lh1='ls -alh'" >> ~/.bash_aliases
cat ~/.bash_aliases
echo "alias lh2='ls -alh'" | sudo tee /etc/profile.d/99-aliases.sh

# --------------------------------------------
# User & Group Management
# --------------------------------------------
echo -e "\n>>> USER & GROUP MANAGEMENT <<<"
whoami
id
id ubuntu
cat /etc/passwd
cat /etc/shadow
cat /etc/group
cat /etc/gshadow
cat /etc/shells

# Create users
sudo useradd testuser1
sudo adduser testuser2
sudo useradd testuser3 -s /bin/bash -m

# Modify user
sudo passwd testuser3
sudo usermod testuser3 -g testuser2
sudo usermod testuser3 -G testuser1
sudo usermod testuser3 -aG 1001
sudo usermod testuser3 -d /home/newdir -m
sudo usermod testuser3 -s /bin/sh

# Delete users
sudo userdel testuser1
sudo userdel testuser2
sudo userdel -rf testuser3

# --------------------------------------------
# Shell History Commands
# --------------------------------------------
echo -e "\n>>> HISTORY <<<"
history
!6
history | grep cat
history 3
history -a
cat ~/.bash_history
echo $HISTSIZE
set | grep HIST
export HISTFILE="/root/.another_history"
> .another_history
set +o history

echo "Day 4 Practice Script Completed!"
