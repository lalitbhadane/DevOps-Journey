#!/bin/bash
# =============================================
# Day 5 – Linux Privileges, Logs & Package Mgmt
# Practiced on July 12
# =============================================

echo "Starting Day 5 Script..."

# -----------------------------
# User Switching & Privileges
# -----------------------------
whoami
id
su - student1
whoami
id
su - student2
whoami
id
grep ^root /etc/passwd
grep ^root /etc/shadow

# -----------------------------
# sudo Usage & visudo Config
# -----------------------------
sudo ps
sudo -i
update-alternatives --config editor
visudo
# Add: student1 ALL=(ALL:ALL) ALL
# Add: student2 ALL=(ALL:ALL) NOPASSWD:ALL

# -----------------------------
# sudoers.d Directory Method
# -----------------------------
sed -i '/student/d' /etc/sudoers
echo "student2 ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/student2
echo "student3 ALL=(ALL:ALL) ALL" > /etc/sudoers.d/student3
ls -al /etc/sudoers.d

# -----------------------------
# Logs & Monitoring
# -----------------------------
cd /var/log
ls -al
cat /var/log/syslog
tail /var/log/syslog
logger "This is a test message"
tail /var/log/syslog
tail -f /var/log/nginx/access.log

# -----------------------------
# journalctl Log System
# -----------------------------
journalctl
journalctl --list-boots
journalctl -b
journalctl --since "$(date '+%Y-%m-%d %H:%M:%S' --date='5 minutes ago')"
journalctl -u nginx.service --since today
journalctl _PID=$(pgrep nginx | tail -n1)
journalctl -F _GID
journalctl -k
journalctl -p err -b
journalctl -b -u nginx -o json-pretty

# -----------------------------
# File Archival & Compression
# -----------------------------
du -sk test.img
du -sh test.img
ls -lh test.img
tar -cf test.tar file1 file2 file3
tar -tf test.tar
tar -xf test.tar
tar -zcf test.tar.gz file1 file2 file3
bzip2 test.img
bunzip2 test.img.bz2
gzip test1.img
gunzip test1.img.gz
xz test2.img
unxz test2.img.xz

# -----------------------------
# File Searching & Pattern Matching
# -----------------------------
locate City.txt
sudo updatedb
find /home/michael -name City.txt
grep second sample.txt
grep -i capital sample.txt
grep -R "third line" /home/michael
grep -v exam examples.txt
grep -w exam examples.txt
grep -vw exam examples.txt
grep -A1 Arsenal premier-league-table.txt
grep -B1 4 premier-league-table.txt
grep -A1 -B1 Chelsea premier-league-table.txt

# -----------------------------
# IO Redirection & Piping
# -----------------------------
cat sample_text.txt
echo $SHELL > shell.txt
echo "This is the Bash shell" >> shell.txt
cat missing_file 2> error.txt
cat missing_file 2>> error.txt
cat missing_file 2> /dev/null
echo $SHELL | tee shell.txt
echo $SHELL | tee -a shell.txt
grep Hello sample.txt | less

# -----------------------------
# VI Editor Practice
# -----------------------------
vi sample.txt
# Basic operations: i, Esc, :wq, dd, yy, p, u, Ctrl+r, /search

# -----------------------------
# DNS & /etc/hosts Config
# -----------------------------
ping 192.168.1.11
cat >> /etc/hosts
ping db
ping www.google.com
cat /etc/resolv.conf
cat /etc/nsswitch.conf

echo "Day 5 Script Completed!"
