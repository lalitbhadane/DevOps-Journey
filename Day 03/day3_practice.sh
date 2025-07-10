#!/bin/bash
# Day 3 Linux Practice Script
# Only includes commands from July 10 that are NEW topics

# 1. ls command variations
ls
ls --color=auto
ls -l
ls -n
ls -a
ls -A
ls -al
ls -lt
ls -ltu
ls -ltc
ls -s
ls -ls
ls -lS
ls -lh
ls -lSh
ls -1
ls -m
ls -lQ
ls -al --author
ls -ald
ls -ali
ls -alR
ls -alSr
ls --version
ls --help

# 2. top command usage and navigation
top -o %MEM
top -c
top -u root
# (top navigation shortcuts were used manually in the interface, not via CLI)

# 3. Viewing and manipulating files
cat testfile
file testfile
vim testfile
view testfile
more testfile
less testfile
less testfile | grep "Resolution"
head -n10 testfile
tail -n10 testfile
cat testfile | tail -n1
cat testfile | head -n4 | tail -n2

# 4. Pipes and Redirection
cat numbers.txt | wc -l
cat numbers.txt | sort | uniq | wc -l
ls -al > directorylist.txt
echo "separator" >> directorylist.txt
cat .profile > directorylist.txt
cat .profile >> directorylist.txt
wc -l < numbers.txt > count.txt
while read line; do echo "Line: ${line}"; done < numbers.txt

# 5. File and directory operations
mkdir -p testdir/subdir
touch testfile my{01..05}file
rm testfile
rm -rf testdir
