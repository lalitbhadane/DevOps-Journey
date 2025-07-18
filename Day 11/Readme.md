# Day 11 – Linux Links, Permissions, File Search & SELinux
📅 **Date:** July 18, 2025

## 📚 Topics Covered:
### 🔗 File Links
- **Hard Links:** Multiple filenames pointing to the same inode
- **Soft Links (Symlinks):** Pointers to file paths, flexible across file systems

### 🔐 Special File Permissions
- **SUID:** Execute with file owner's privileges
- **SGID:** Execute with group privileges
- **Sticky Bit:** Restricts file deletions to owners in shared directories

### 🔎 File Search with `find`
- Locate files by:
  - Permission (`-perm -4000` for SUID files)
  - Size (`-size +100M`)
  - Modification time (`-mtime -7`)

### 🔐 SELinux Overview
- Checked SELinux status and current mode
- Modes: Enforcing, Permissive, Disabled

## 🧩 Practice Script
All commands and examples consolidated in:
[`day11_linux_practice.sh`](./day11_linux_practice.sh)

## 🔗 References
- `man find`
- `man chmod`

## 💡 Reflection
Strengthened understanding of Linux file system internals, permission controls, and security configurations essential for hardened systems.
