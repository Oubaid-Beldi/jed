#1
lsblk -f

>>
NAME   FSTYPE LABEL UUID               MOUNTPOINT
sda
├─sda1 ext4         1234-ABCD          /
├─sda2 swap         5678-DCBA          [SWAP]
sdb
└─sdb1 ext4         4321-EFGH          /mnt/usb

| Column       | Meaning                                                                     |
| ------------ | --------------------------------------------------------------------------- |
| `NAME`       | Device name (disk or partition), e.g., `sda`, `sda1`, `sdb1`                |
| `FSTYPE`     | File system type (e.g., `ext4`, `swap`, `vfat`, `ntfs`)                     |
| `LABEL`      | Name/label assigned to the partition (optional)                             |
| `UUID`       | Unique identifier for the file system (used for mounting via `/etc/fstab`)  |
| `MOUNTPOINT` | Where the partition is mounted in the Linux file system (e.g., `/`, `/mnt`) |

#2

sudo hdparm -Tt /dev/sda

#3

df -T # shows mounted file systems on your system

#4

sudo fdisk /dev/sda

#5

sudo parted /dev/sda

# table GPT