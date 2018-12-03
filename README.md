**Prerequisites**: A host machine with Ubuntu/CentOS OS preinstalled with Vagrant & VirtualBox SW.

For Vagrant and VirtualBox setup [vagrant-host-setup/README.md](https://gitlab.com/sohaibazed/abubakar/tree/master/vagrant-host-setup)

```bash
host> git clone https://gitlab.com/sohaibazed/contrail-all-in-one.git
host> cd contrail-all-in-one 
host> vagrant status
host> vagrantup
```

Download contrail-ansible-deployer.tar.gz file and place it inside the folder. By default without making any change in "Vagrantfile" above topology will be created. You can change MGMT and Ctrl+Data Subnet in Vagrantfile as needed.

### How to use Foxy Proxy for GUI access

Follow these steps for GUI access via FoxyProxy.
1- Open FireFox and open https://addons.mozilla.org/en-US/firefox/ URL.
2- Search for FoxyProxy and select "FoxyProxy Standard"
3- Click on "Add to Firefox"


![Web Console](/Images/FoxyProxy-Install.png)

Now open ssh port forwading session to physical server using port 1080. please change IP as per your host config

```bash
your-laptop> ssh root@<< physical server ip>> -D 1080
```

Configure FireFox FoxyProxy add-on by configuring "127.0.0.1" & port 1080 as Scoks4 as captured in screenshot.

![Web Console](/Images/FoxyProxy-Configure.png)

Now enable FoxyProxy add-on by selecting the profile created earlier and open Contrail GUI using IP address of Vagrant VM https://30.30.30.31:8143

![Web Console](/Images/FoxyProxy-Contrail-GUI-k8s.png)

## Access Contrail and Openstack UIs

| Service   | URL                         | Username | Password    |
| --------- | --------------------------- | -------- | ----------- |
| openstack | http://30.30.30.31       | admin    | contrail123 |
| contrail  | https://30.30.30.31:8143 | admin    | contrail123 |

