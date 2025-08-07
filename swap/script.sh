
# Check what swap spaces are currently active
sudo swapon --show
# See detailed swap information
cat /proc/swaps

# Check if the full partition is formatted as swap
sudo file -s /dev/nvme0n1p1
# Reformat the entire partition as swap:
sudo mkswap /dev/nvme0n1p1

# Turn off current swap:
sudo swapoff -a
# Turn swap back on:
sudo swapon /dev/nvme0n1p1



# Remove the swapfile to free up disk space (optional)
sudo rm /swapfile
