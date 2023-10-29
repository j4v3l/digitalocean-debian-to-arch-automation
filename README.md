# DigitalOcean Debian to Arch Transformation using Terraform & Ansible

---

## Warning / Disclaimer
>
> :warning: **ALL DATA ON THE DROPLET WILL BE UNCONDITIONALLY DESTROYED.**
>
> This transformation may cause your VPS to become unbootable. It's recommended to run this only on newly created droplets with no essential data.
---

## Description

This project is automated using Ansible and Terraform to create DigitalOcean droplets seamlessly. It is highly adaptable, supporting all available DigitalOcean images. One of the critical features of this project is its ability to convert Debian 10 and below to the latest version of ArchLinux, ensuring the droplets operate on an up-to-date and enhanced system.

## Project Structure

```plaintext
📁 DIGITALOCEAN
├── 📁 debian_to_arch
│   ├── 📁 ansible
│   │   ├── 📁 roles
│   │   │   ├── 📁 confirmation
│   │   │   │   └── 📄 main.yml
│   │   │   ├── 📁 docker_portainer
│   │   │   │   ├── 📁 files
│   │   │   │   │   └── 📄 install_docker_portainer.sh
│   │   │   │   └── 📁 tasks
│   │   │   │       └── 📄 main.yml
│   │   │   └── ...
│   │   ├── 📄 ansible.cfg
│   │   ├── 📄 inventory.ini
│   │   └── ...
│   ├── 📁 terraform
│   │   ├── 📁 modules
│   │   │   ├── 📁 droplet
│   │   │   │   ├── 📄 main.tf
│   │   │   │   ├── 📄 outputs.tf
│   │   │   │   └── 📄 variables.tf
│   │   │   └── ...
│   │   ├── 📄 .terraform.lock.hcl
│   │   ├── 📄 main.tf
│   │   ├── 📄 outputs.tf
│   │   ├── 📄 variables.tf
│   │   └── ...
│   ├── 📄 .gitignore
│   ├── 📄 README.md
│   └── ...
└── ...
```

---

# How to Run Scripts in Linux

1. **Navigate to the Project Directory:**
   Open a terminal and navigate to the directory where the project is cloned.

   ```bash
   cd path_to_directory/DIGITALOCEAN/debian_to_arch
   ```

2. **Make the Scripts Executable:**
   Provide execute permissions to the scripts to make them runnable.

   ```bash
   chmod +x terraform_destroy.sh terraform_init.sh terraform_apply.sh
   ```

3. **Initialize Terraform:**
   Run the initialization script. This will initialize the working directory containing Terraform configuration files.

   ```bash
   ./terraform_init.sh
   ```

4. **Apply the Configuration:**
   Execute the apply script. This will apply the changes required to reach the desired state of the configuration.

   ```bash
   ./terraform_apply.sh
   ```

5. **Destroy the Infrastructure:**
   Execute the destroy script when you need to destroy all the Terraform-managed infrastructure.

   ```bash
   ./terraform_destroy.sh
   ```

Ensure that you have the necessary credentials and configurations to interact with DigitalOcean.

# Credits

This automation leverages the script and transformation logic from [gh2o's digitalocean-debian-to-arch](https://github.com/gh2o/digitalocean-debian-to-arch). All credits go to the contributors of that repository for the core transformation mechanism
---
