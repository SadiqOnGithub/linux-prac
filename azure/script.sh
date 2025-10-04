# Login interactively (browser/device code)
az login

# Use device code flow (useful when you don't have a browser on the machine)
az login --use-device-code

# Login with a Service Principal (automation / CI/CD)
az login --service-principal -u <APP_ID> -p <PASSWORD> -t <TENANT_ID>

# List accounts
az account list

# List all subscriptions
az account list --all

# Set default account
az account set --subscription <SUBSCRIPTION_ID>
