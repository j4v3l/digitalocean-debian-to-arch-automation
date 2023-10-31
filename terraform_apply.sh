#!/bin/bash
clear
cat <<"EOF"
╺┳╸┏━╸┏━┓┏━┓┏━┓┏━╸┏━┓┏━┓┏┳┓   ╻ ╻┏━╸╻  ┏━┓┏━╸┏━┓
 ┃ ┣╸ ┣┳┛┣┳┛┣━┫┣╸ ┃ ┃┣┳┛┃┃┃╺━╸┣━┫┣╸ ┃  ┣━┛┣╸ ┣┳┛
 ╹ ┗━╸╹┗╸╹┗╸╹ ╹╹  ┗━┛╹┗╸╹ ╹   ╹ ╹┗━╸┗━╸╹  ┗━╸╹┗╸
EOF
echo "by J4V3L (2023)"
echo "-----------------------------------------------------"
# Define the path to the inventory file, transformation script, and Terraform directory
TERRAFORM_DIR="terraform/"
INVENTORY_FILE="ansible/inventory.ini"
TRANSFORMATION_SCRIPT="ansible/run_transformation.sh"

# Store the initial directory
INITIAL_DIR=$(pwd)

# Change to the Terraform directory and run terraform apply to create resources
cd $TERRAFORM_DIR
terraform apply -auto-approve

# Get droplet IP address
DROPLET_IP=$(terraform output -raw droplet_ip)

# Navigate back to the initial directory
cd $INITIAL_DIR

# Overwrite the inventory.ini with the header
echo "[digitalocean_droplets]" >$INVENTORY_FILE
echo "# droplet ip address" >>$INVENTORY_FILE

# Append IP address to the inventory file
echo "${DROPLET_IP}" >>$INVENTORY_FILE

# Navigate to the ansible directory
cd ansible/

# Run the transformation script
echo "Running transformation script..."
sleep 15
bash ./run_transformation.sh
