#!/bin/bash
# =============================================
#  Day 12 – File Info, Inodes, Permissions, Ownership
#  Practiced on July 19
# =============================================

echo "Starting Day 12 Practice Script..."

# --------------------------------------------
#  Check file types
echo "Checking file types with 'file' command..."
touch sample.txt
file sample.txt

echo "#!/bin/bash" > sample.sh
file sample.sh

file /dev/null
file /bin/bash

# --------------------------------------------
#  File metadata with stat
echo "Fetching metadata using stat..."
stat sample.txt
stat -f sample.txt
stat -t sample.txt
stat --printf="File %n is %s bytes, and is a %F\n" sample.txt

# --------------------------------------------
#  Inode Information
echo "Inode number of sample.txt:"
ls -il sample.txt

echo "Disk block size:"
blockdev --getbsz /dev/vda 2>/dev/null || echo "Command needs proper block device."

echo "Disk usage info:"
df -i .

# --------------------------------------------
#  Permissions (absolute & symbolic)
echo "Setting permissions..."
chmod 755 sample.sh
chmod u-x sample.sh

# --------------------------------------------
#  Ownership and Groups
echo "Creating test files for ownership demo..."
touch test01 test02 test03

echo "Changing group of test01 to 'student2'"
chgrp student2 test01 2>/dev/null || echo "Group student2 may not exist."

echo "Changing owner of test02 to 'student2'"
chown student2 test02 2>/dev/null || echo "User student2 may not exist."

echo "Changing owner and group of test03 to 'student1:student3'"
chown student1:student3 test03 2>/dev/null || echo "User/group student1:student3 may not exist."

echo "Day 12 Practice Script Completed!"
