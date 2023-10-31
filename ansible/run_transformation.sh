#!/bin/bash
cat <<"EOF"
┏━┓┏┓╻┏━┓╻┏┓ ╻  ┏━╸   ╻ ╻┏━╸╻  ┏━┓┏━╸┏━┓
┣━┫┃┗┫┗━┓┃┣┻┓┃  ┣╸ ╺━╸┣━┫┣╸ ┃  ┣━┛┣╸ ┣┳┛
╹ ╹╹ ╹┗━┛╹┗━┛┗━╸┗━╸   ╹ ╹┗━╸┗━╸╹  ┗━╸╹┗╸
EOF
echo "by J4V3L (2023)"
echo "-----------------------------------------------------"
#source ~/ansible/venv/bin/Activate #ensure you have ansible installed on your machine
ansible-playbook transform.yml
