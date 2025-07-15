# Day 8 – Streams, Scheduling, and File Information
📅 **Date:** July 15, 2025

## 📚 Topics Practiced:

### 🔸 Linux Streams & Redirection
- Understanding `stdin`, `stdout`, `stderr`
- Redirecting errors with `2>`
- Capturing both stdout & stderr with `> file 2>&1`
- Checking input source with `tty` and `/dev/fd`

### 🔸 Scheduling with Crontab
- Listing existing jobs: `crontab -l`
- Editing crontab jobs: `crontab -e`
- Monitoring cron service: `systemctl status cron.service`
- Viewing cron logs: `journalctl -u cron`

### 🔸 File Metadata & Type
- `file` command to identify file types
- Checking binaries, devices, archives
- `stat` command for metadata (size, type, permissions, timestamps)
- `stat -f` for filesystem info
- Custom formatting with `stat --printf`

---

## 🧩 Hands-On Script
All practiced commands are documented in:
[`day8_linux_practice.sh`](./day8_linux_practice.sh)

## 🔗 References
- `man file`
- `man stat`
- `man crontab`

---

## 💡 Reflection
- Learned deeper insights into how files and streams work in Linux
- Scheduling via cron feels powerful — automating checks next!
