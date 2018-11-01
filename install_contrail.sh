cp /vagrant/contrail-ansible-deployer-5.0.1-0.214.tgz /home/vagrant/
cp /vagrant/instances.yaml /home/vagrant/instances.yaml
tar -zxvf /home/vagrant/contrail-ansible-deployer-5.0.1-0.214.tgz

cp /home/vagrant/instances.yaml /home/vagrant/contrail-ansible-deployer/config/instances.yaml
cd /home/vagrant/contrail-ansible-deployer

pwd

ansible-playbook -i inventory/ -e orchestrator=openstack playbooks/configure_instances.yml
ansible-playbook -i inventory/ -e orchestrator=openstack playbooks/install_openstack.yml
ansible-playbook -i inventory/ -e orchestrator=openstack playbooks/install_k8s.yml
ansible-playbook -i inventory/ -e orchestrator=openstack playbooks/install_contrail.yml
