

# =========================
# Basics
# =========================
# Create minimal VM
az vm create -g my-rg -n my-vm

# Minimal Linux VM:
# defaults: https://learn.microsoft.com/en-us/cli/azure/vm?view=azure-cli-latest#az-vm-create
az vm create -g my-rg-nc -n myVM --size Standard_B1ls --image Ubuntu2204

# Create a Linux VM (Ubuntu)
az vm create \
  --resource-group my-rg \
  --name my-vm \
  --image UbuntuLTS \
  --admin-username sadiq \
  --generate-ssh-keys

# List all VMs in a resource group
az vm list -g my-rg -o table

# Show details of a VM
az vm show -g my-rg -n my-vm

# Start / Stop / Restart a VM
az vm start -g my-rg -n my-vm
az vm stop -g my-rg -n my-vm        # Stop the VM but charging
az vm deallocate -g my-rg -n my-vm  # no money charged
az vm restart -g my-rg -n my-vm

# SSH into VM (shortcut)
az ssh vm -g my-rg -n my-vm







# VM Image list
# https://learn.microsoft.com/azure/virtual-machines/linux/cli-ps-findimage
az vm image list --output table
az vm image list -l <location>
az vm image show --urn <image-urn>
# az sig image-version show-shared

# VM size as per location
az vm list-sizes --location eastus --output table

# VM availability as per location
az vm list-skus --location centralus --size Standard_D --all --output table

# =========================
# Steps to find the right VM
# =========================
# Step 0: filter VM and get desired (rn cheapest)
az vm list-sizes -l eastus -o table | sort -nk 4 -nk 2 | head -n 30

# Step 1: only names for grep
az vm list-sizes -l eastus -o table | sort -nk 4 -nk 2 | head -n 20 | awk 'NR > 2 {print $3}' | paste -s -d '|'
# <desired VM names pipe | seprated>

# Step 2: put all vm availability data at location in a file
az vm list-skus -l northcentralus -o table > VM_northcentralus.txt
# You can check locations
# az account list-locations -o table

# Step 3: check is desired vm size available
cat VM_northcentralus.txt | grep -E "<desired VM names pipe | seprated>" | grep None
# <available VM sizes pipe | seprated>

# Step 4: check available vm sizes
az vm list-sizes -l northcentralus -o table | sort -nk 4 -nk 2 | grep -E "<available VM sizes pipe | seprated>"
