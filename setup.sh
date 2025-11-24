#!/bin/bash
# Setup script for installing Ansible collections and running the playbook

set -e

echo "Installing required Ansible collections..."
ansible-galaxy collection install -r requirements.yml

echo ""
echo "Collections installed successfully!"
echo "Now running playbook..."
echo ""

ansible-playbook local.yml --ask-become-pass --ask-vault-pass
