
# Create a resource group
az group create --name my-rg --location eastus

# List all resource groups
az group list --output table

# Show details of a resource group
az group show --name my-rg

# Delete a resource group (careful!)
az group delete --name my-rg --yes --no-wait
