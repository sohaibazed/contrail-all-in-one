# Vagrant-Host-Setup

This repo provide instructions and scripts setting up BMS host machine for Vagrant & Ansible.

## CentOS 7.5 Vagrant Installation

Install CentOS 7.5 on the BMS host and following below steps:

```bash
host> git clone https://gitlab.com/sohaibazed/contrail-all-in-one.git 
host> cd contrail-all-in-one/vagrant-host-setup
host> ./setup_vagrant_centos.sh
```
Note: "setup_vagrant_centos.sh" script will take care of installtion of VirtualBox 5.2, Vagrant, Ansible and JunOS python & ansible modules.

In case you would also like setting up bridge interfaces for the Host please use following config as reference.

### br1 interface config

```bash
cat /etc/sysconfig/network-scripts/ifcfg-br1
DEVICE=br1
BOOTPROTO=static
IPADDR=192.168.100.10
NETMASK=255.255.255.0
ONBOOT=yes
TYPE=Bridge
NM_CONTROLLED=no
```

