# MikroTik-CHR-Ansible-Hotspot
This repository contains the necessary files and configurations for setting up a MikroTik CHR with a Hotspot feature, managed via Ansible. It includes an Ansible playbook for configuring RADIUS services, screenshots documenting the process, and the exported MikroTik configuration file. 

# MikroTik Radius Project

## Steps Taken
- Cloned the repository from GitHub.
- Created the required folders and organized the files.
- Added the Ansible playbook `RADIUS.yml`.
- Uploaded configuration screenshots (Firewall.png, Ansible.png, and RADIUS.png).
- Added the Ansible hosts file with the MikroTik CHR connection details.
- Included the exported MikroTik configuration `chr.rsc`.

## Challenges Encountered
- Struggled with SSH connectivity issues to the MikroTik CHR, resolved by updating SSH keys.
- Encountered minor formatting issues while writing the playbook.

## References and Resources
- [MikroTik Documentation](https://wiki.mikrotik.com)
- [Ansible Documentation](https://docs.ansible.com)
- Helpful community forums and blogs on MikroTik and Ansible integration.

## Ubiquiti Hotspot Configuration
To configure a captive portal on Ubiquiti Unifi Network Server v8, follow these steps:
1. Log in to your Unifi Controller.
2. Navigate to **Settings** > **WiFi** > **Hotspot**.
3. Enable Hotspot and configure **Landing Page**, **Voucher System**, and **Login Page Customization**.
4. Apply the settings and monitor the network for hotspot connections.

