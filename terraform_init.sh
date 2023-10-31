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

# Initialize the Terraform working directory
terraform init

# Navigate back to the original directory
cd -

echo "Terraform initialization completed."
