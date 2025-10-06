
# Install autocomplete
terraform -install-autocomplete

# First command to run in any Terraform project
# Downloads providers/modules
# Sets up backend (Terraform Cloud)
terraform init


terraform fmt
terraform fmt -diff
terraform fmt -recursive

terraform validate

terraform providers

# Shows what changes will be made
# Safe to run anytime
# Use -out planfile to save for apply
terraform plan

# Executes the planned changes
# Always run plan first in production
terraform apply
terraform apply planfile  # Use saved plan
terraform apply -auto-approve  # Skip confirmation

terraform show

terraform plan -destroy  # See what will be destroyed
terraform destroy
terraform destroy -target aws_instance.web  # Destroy specific resource


# State Management (Remote in TFC)
terraform state list  # List all resources
terraform state show aws_instance.web  # Show specific resource
terraform state pull > state.json  # Download state for inspection


terraform output
terraform output resource_group_id


# ==========================
# Extras
# ==========================

terraform get
