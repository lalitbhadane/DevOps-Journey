#!/bin/bash
# =============================================
# Day 09 – Advanced Shell Scripting & Functions
# Practiced on July 16
# =============================================

echo "Starting Day 09 Practice Script..."

# --------------------------------------------
# Function Example: Directory Backup
# --------------------------------------------
backup_folder() {
    local folder=$1
    local backup_location=$2
    if [ -d "$folder" ]; then
        tar -czf "$backup_location/$(basename $folder)_backup_$(date +%F).tar.gz" "$folder"
        echo "Backup of $folder completed successfully."
    else
        echo "Folder $folder does not exist."
    fi
}

# Usage example
# backup_folder /path/to/folder /path/to/backup/location

# --------------------------------------------
# Script Enhancements
# --------------------------------------------
# Using conditionals
number=5
if [ $number -gt 0 ]; then
    echo "$number is positive"
else
    echo "$number is not positive"
fi

# Arithmetic with expr and $(( ))
a=5
b=3
sum=$(expr $a + $b)
echo "Sum using expr: $sum"

sum2=$((a + b))
echo "Sum using \$(( )): $sum2"

# Reading user input
echo "Enter your name:"
read name
echo "Hello, $name!"

# Using case statement
echo "Enter a number between 1-3:"
read num
case $num in
    1) echo "You selected One";;
    2) echo "You selected Two";;
    3) echo "You selected Three";;
    *) echo "Invalid selection";;
esac

# Loop example
for i in {1..5}; do
    echo "Loop iteration: $i"
done

echo "Day 09 Practice Script Completed!"
