
# Create a Linux VM (Ubuntu)
az vm create -g my-rg -n my-vm

# List all VMs in a resource group
az vm list -g my-rg --output table

# Show details of a VM
az vm show -g my-rg -n my-vm

# Start / Stop / Restart a VM
az vm start -g my-rg -n my-vm
az vm deallocate -g my-rg -n my-vm
az vm restart -g my-rg -n my-vm

# SSH into VM (shortcut)
az ssh vm --resource-group my-rg --name my-vm








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
az account list-locations -o table

# Step 3: check is desired vm size available
cat VM_northcentralus.txt | grep -E "<desired VM names pipe | seprated>" | grep None
# <available VM sizes pipe | seprated>

# Step 4: check available vm sizes
az vm list-sizes -l northcentralus -o table | sort -nk 4 -nk 2 | grep -E "<available VM sizes pipe | seprated>"
