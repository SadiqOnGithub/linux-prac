
# This shows all your block devices, partitions, and mount points.
lsblk
# or
fdisk -l

# Create a virtual disk file
dd if=/dev/zero of=disk.img bs=1M count=512
# or
# Create 40GB file
sudo fallocate -l 40G /path/to/virtual_disk.img

# Attach it as a loop device, so it appears like a disk
sudo losetup /dev/loop0 disk.img
# or auto find unused device
sudo losetup -f /path/to/virtual_disk.img

# Format as ext4 (assuming /dev/loop1)
sudo mkfs.ext4 /dev/loop1

# mount
sudo mkdir /mnt/lfs
sudo mount /dev/loop0 /mnt/lfs

# persistency
echo "/path/to/virtual_disk.img /mnt/virtual_disk ext4 loop 0 0" >> /etc/fstab

# create a partision
#
# format with a file system
#
# mout it
#
# edit /etc/fstab file for persistency
