# 🗂️ Linux Folder Structure Explained

Understanding Linux's filesystem is key for navigation, troubleshooting, and managing services.

---

## 📍 What the Prompt Tells You

Example: `root@ubuntu:/#`
- `root` → current user
- `@ubuntu` → hostname
- `/` → current directory
- `~` → home directory

---

## 🔑 Top-Level Directories

| Directory | Description |
|----------|-------------|
| `/`      | Root of the filesystem (everything starts here) |
| `/bin`   | Essential user binaries (e.g., `ls`, `cat`) |
| `/sbin`  | System admin binaries (e.g., `useradd`) |
| `/lib`   | Essential libraries for binaries in `/bin` and `/sbin` |
| `/boot`  | Boot loader and kernel files |
| `/etc`   | System configuration files |
| `/home`  | User home directories |
| `/root`  | Root user's home directory |
| `/var`   | Variable data (e.g., logs, mail) |
| `/tmp`   | Temporary files |
| `/usr`   | Secondary hierarchy (user-installed software, docs, etc.) |
| `/opt`   | Optional third-party software |
| `/media` | Mount points for removable media |
| `/mnt`   | Temporary mount points |
| `/srv`   | Data for services (web, ftp) |
| `/proc`  | Virtual filesystem showing system info |
| `/run`   | Runtime process info (since boot) |
| `/data`  | Often used for shared, project, or app-specific data |

---

## 🧭 PATH Environment Variable

- The `PATH` variable tells Linux **where to look** for executables.
- Example: `/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
- Run `echo $PATH` to view your current path setup.

---

## 🧠 Quick Tips

- `/etc/passwd` → user info
- `/etc/os-release` → distro info
- `/var/log/` → log files
- Use `ls /` to start exploring