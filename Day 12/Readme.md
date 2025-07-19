# Day 12 – File Info, Inodes, Permissions, and Ownership
📅 **Date:** July 19, 2025

## 📚 Topics Covered:
### 🔎 File Information
- `file`: Identify file type (text, binary, device files)
- `stat`: Fetch system metadata (size, blocks, inodes, timestamps)

### 📌 Inodes & Storage
- Checked inode info with `ls -il`
- Retrieved block sizes via `blockdev`
- Explored disk & inode usage with `df -i`

### 🔐 File Permissions
- Practiced `chmod` in absolute (e.g., `755`) & symbolic (e.g., `u-x`) modes
- Explored impact of permissions on files and directories

### 👥 Ownership & Groups
- Changed file owner: `chown`
- Changed file group: `chgrp`
- Recursive ownership adjustments with `-R`

### 🧩 Practiced Commands Recap
- `file`, `stat`, `ls -il`, `df -i`, `blockdev`
- `chmod`, `chown`, `chgrp`

## 🛠️ Hands-on Practice Script
Find the complete hands-on script:
[`day12_linux_practice.sh`](./day12_linux_practice.sh)

## 🔗 References
- `man file`
- `man stat`
- `man chmod`
- `man chown`
- `man chgrp`

## 💡 Reflection
Solidified file system introspection and permission handling — essential for system security and DevOps automation.
