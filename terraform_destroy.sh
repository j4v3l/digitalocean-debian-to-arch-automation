#!/bin/bash
clear
cat <<"EOF"
╺┳╸┏━╸┏━┓┏━┓┏━┓┏━╸┏━┓┏━┓┏┳┓   ╻ ╻┏━╸╻  ┏━┓┏━╸┏━┓
 ┃ ┣╸ ┣┳┛┣┳┛┣━┫┣╸ ┃ ┃┣┳┛┃┃┃╺━╸┣━┫┣╸ ┃  ┣━┛┣╸ ┣┳┛
 ╹ ┗━╸╹┗╸╹┗╸╹ ╹╹  ┗━┛╹┗╸╹ ╹   ╹ ╹┗━╸┗━╸╹  ┗━╸╹┗╸
EOF
echo "by J4V3L (2023)"
echo "-----------------------------------------------------"
# Define the path to the Terraform directory
TERRAFORM_DIR="terraform/"

# Navigate to the Terraform directory
cd $TERRAFORM_DIR

# Destroy the Terraform-managed infrastructure with confirmation
terraform destroy -auto-approve

# Navigate back to the original directory
cd -

echo "Terraform destroy operation completed."
