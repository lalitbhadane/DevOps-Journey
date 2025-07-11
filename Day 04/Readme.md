# Day 4 – Process Management, Aliases, Users, and History
📅 **Date:** July 11, 2025

## 📚 Topics Covered:
### 🔹 Process Management with `ps`
- Viewing session-specific and all processes
- Exploring process states (`STAT`)
- Using `ps`, `ps -ef`, `ps aux`, `ps aux --forest`
- Filtering by user, command, PID
- Introduction to `pstree`

### 🔹 Aliases
- Creating session-based aliases using `alias`
- Making aliases persistent via `.bashrc` and `.bash_aliases`
- Configuring global aliases for all users via `/etc/profile.d`

### 🔹 Users & Groups
- Checking identity: `whoami`, `id`
- Understanding UID, GID, `/etc/passwd`, `/etc/group`
- Creating users: `useradd`, `adduser`
- Modifying users: `usermod`, `passwd`
- Assigning/removing groups and home directories
- Deleting users and cleaning up

### 🔹 Command History
- Viewing history: `history`, `!n`, `history | grep`
- Interactive recall with `CTRL+R`
- Configuring history behavior in `.bashrc`
- Changing history file destination with `HISTFILE`
- Clearing and disabling command history

## 🔧 Hands-On Practice:
- Practiced `ps`, `pstree`, and all major filters
- Created aliases in all 3 locations (local, .bashrc, global)
- Created, modified, deleted users with flags
- Used advanced `usermod` options for group/home/shell
- Explored and configured shell history

🖥️ See full commands here → [`day4_practice.sh`](./day4_practice.sh)

## 💬 Reflections:
- `ps` command’s flexibility is underrated
- Aliases save massive time when configured right
- User and group management finally feels natural
- Command history = personal productivity cheat code

## 🔁 Previous Concepts Practiced:
- File viewing (`cat`, `less`)
- Redirection (`>`, `>>`)
- `ls` flags + shell scripting from prior days
