# Day 5 – Privileges, Logs, Packages & More
📅 **Date:** July 12, 2025

## 📚 Topics Covered:

### 🔐 Privileges & User Switching
- `whoami`, `id`, `su` to switch users
- Explored `/etc/passwd`, `/etc/shadow` files
- Used `sudo`, `visudo`, and configured passwordless sudo
- Managed sudo rules via `/etc/sudoers.d`

### 📋 Logs & Monitoring
- Read logs using `cat`, `tail`, `logger`, and `tail -f`
- Analyzed system logs with `journalctl`
  - Boot history, PID, unit-based logs
  - Filters: `-b`, `--since`, `-u`, `-p err`, JSON output

### 📦 Package Management
- Used `dpkg`, `apt`, and `yum` for:
  - Installing, removing, updating, searching packages
  - Cross-checked software dependencies and info

### 🗜️ Archival & Compression
- Archived with `tar`
- Compressed with `gzip`, `bzip2`, `xz`
- Unpacked/extracted all major formats

### 🔍 Search & Pattern Matching
- `locate`, `find`, and `grep` (including advanced options: `-A`, `-B`, `-R`, `-v`, `-w`)

### 🔁 IO Redirection & Piping
- Combined commands with `|`, `>`, `>>`, and `tee`
- Managed standard error output (`2>` and `/dev/null`)

### 📝 VI Editor
- Opened and edited files using `vi`
- Practiced essential commands: insert, delete, undo, search

### 🌐 DNS & Hosts File
- Used `ping`, modified `/etc/hosts`, and explored `resolv.conf`, `nsswitch.conf`

---

## 🧪 Hands-On Highlight:
Built a **mini system monitor script** using:
- User/sudo privilege logic
- Real-time log tailing
- `journalctl` with filtering

🖥️ All commands available in: [`day5_linux_practice.sh`](./day5_practice.sh)

---

## 💬 Reflections:
- Learned how logs and permissions tie together
- `journalctl` is *powerful but needs more practice*
- Built my first working system-monitor shell script! [`system_monitor.sh`](./system_monitor.sh)

## 🔗 References:
- `man sudo`, `man journalctl`, `man tar`
- Linux documentation + LabEx tutorials
