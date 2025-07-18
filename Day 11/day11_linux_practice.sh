#!/bin/bash
# =============================================
# Day 11 – Linux Links, Permissions, Find, SELinux
# Practiced on July 18
# =============================================

echo "Starting Day 11 Practice Script..."

# --------------------------------------------
#  Hard Link Example
echo "Creating hard link example..."
echo "Original file content" > original_file.txt
ln original_file.txt hardlink_file.txt
echo "Hard link created: hardlink_file.txt points to the same inode as original_file.txt"

# --------------------------------------------
# Soft Link Example
echo "Creating soft link example..."
ln -s original_file.txt softlink_file.txt
echo "Soft link created: softlink_file.txt points to original_file.txt path"

# --------------------------------------------
#  Special Permissions
echo "Setting SUID, SGID, and Sticky Bit examples..."
touch suid_file sgid_file sticky_dir
chmod u+s suid_file
chmod g+s sgid_file
mkdir sticky_dir
chmod +t sticky_dir
ls -l suid_file sgid_file sticky_dir

# --------------------------------------------
#  Using find command
echo "Finding all files with SUID set..."
find / -perm -4000 2>/dev/null

echo "Finding files larger than 100MB..."
find / -size +100M 2>/dev/null

echo "Finding files modified in the last 7 days..."
find / -mtime -7 2>/dev/null

# --------------------------------------------
#  SELinux Status and Modes (requires SELinux)
echo "Checking SELinux status..."
sestatus || echo "SELinux is not installed or not active"

echo " Day 11 Practice Script Completed!"
