# ===========================
# Creating & Managing Namespaces
# ===========================
# Create namespaces
sudo ip netns add ns1
sudo ip netns add ns2

# List all namespaces
sudo ip netns list

# Delete a namespace
sudo ip netns del ns1


# ===========================
# Working Inside Namespaces
# ===========================
# Run a command inside namespace
sudo ip netns exec ns1 ip addr show

# Get a shell inside namespace
sudo ip netns exec ns1 bash

# Check what's inside (initially just loopback)
sudo ip netns exec ns1 ip link show
