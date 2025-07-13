#!/bin/bash
# Day 6 Commands - 2025-07-13

## SSH & SCP
ssh user@hostname
scp source_file user@hostname:/path/to/destination

## IPTables
sudo iptables -L            # List firewall rules
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT  # Allow SSH

## Cronjob
crontab -e                  # Edit crontab for scheduling

## systemctl & journalctl
sudo systemctl status servicename
sudo systemctl start servicename
journalctl -u servicename   # View service logs

## Disk & Partition
lsblk                       # List disks
sudo fdisk /dev/sdX          # Partition disk (MBR)
sudo gdisk /dev/sdX          # Partition disk (GPT)

## Filesystem
sudo mkfs.ext4 /dev/sdX1     # Format as ext4
sudo mount /dev/sdX1 /mnt    # Mount partition

## Storage Types
echo "DAS - Direct Attached Storage"
echo "NAS - Network Attached Storage"
echo "SAN - Storage Area Network"

## NFS Mount
sudo mount -t nfs server:/export /mnt

## LVM Setup
sudo pvcreate /dev/sdX
sudo vgcreate vgname /dev/sdX
sudo lvcreate -L 10G -n lvname vgname

## Resize LVM
sudo lvresize -L +5G /dev/vgname/lvname
sudo resize2fs /dev/vgname/lvname

## Disk Usage
df -h
