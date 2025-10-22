
# getting VM CPU %
az monitor metrics list --resource MKApp-System-Backend --resource-group mkbackendsysteminfra --resource-type Microsoft.Compute/virtualMachines
# OR
    # get VMs id by this:
    # az vm list --query "[].{Name:name, ID:id, ResourceGroup:resourceGroup}" --output yamlc
az monitor metrics list --resource ID

# hourly bases data
az monitor metrics list \
  --resource <VM_ID> \
  --metric "Percentage CPU" \
  --start-time $(date -d "30 days ago" -Ins --utc) \
  --end-time $(date -Ins --utc) \
  --interval PT1H \
  --output table
  # NOTE: --interval (default is 1m) PT1H, --interval PT24H, --interval PT1D, --interval PT7D, --interval PT30D
