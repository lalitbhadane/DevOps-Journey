#!/bin/bash

# Basic Linux Commands
echo "Hello World"
whoami
id

# File Creation
touch example.txt
echo "Hello, Linux" > file2.txt
echo "Hidden file" > .hiddenfile

# Directory creation
mkdir testdir

# Permissions
chmod 700 example.txt
chmod u+x script.sh

# Ownership
sudo chown root:root example.txt
sudo chown -R root:root new-dir/
