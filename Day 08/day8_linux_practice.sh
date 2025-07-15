#!/bin/bash
# =============================================
#  Day 8– Streams, Crontab, File Info Commands
#  Practiced on July 15
# =============================================

echo "Starting Day 8 Practice Script..."

# --------------------------------------------
#  Understanding Streams
# --------------------------------------------
ls -al /dev/fd
tty

# Redirecting errors to a file
cat noexist.txt 2> errorfile
cat errorfile

# Redirecting STDOUT and STDERR
cat .profile 1> catfile 2> errorfile

# Capturing both STDOUT and STDERR into one file
cat notexists.txt > capture.txt 2>&1

# Check STDIN origin
if [ -t 0 ]; then
  echo "stdin coming from keyboard"
else
  echo "stdin coming from a pipe or file"
fi

# --------------------------------------------
#  Crontab Scheduling
# --------------------------------------------
crontab -l  # list existing jobs
# crontab -e # Uncomment to edit crontab and add jobs

# Sample cron expression:
# * * * * * echo 'Cron job running at $(date)' >> ~/cron_output.txt

# Check cron service
systemctl status cron.service
journalctl -u cron

# --------------------------------------------
#  File Information - file command
# --------------------------------------------
touch myfile
echo 'Sample content' > myfile
file myfile
file /bin/bash
file /usr/local/go/lib/time/zoneinfo.zip
file /dev/null
file /dev/random

# --------------------------------------------
#  File Information - stat command
# --------------------------------------------
stat myfile
stat -f myfile
stat -t myfile
stat --printf="File %n is %s bytes, and is a %F\n" myfile

echo "Day 8 Practice Script Completed!"
