Vagrant.configure("2") do |config|
    config.vm.define "srv1" do |srv|
            srv.vm.box = "sohaibazed/CentOS7.6-350GB"
            srv.vm.box_version = "1.0"
            srv.vm.hostname = "srv1"
            srv.vm.network "private_network", ip:"30.30.30.31"
            srv.ssh.insert_key = true
            srv.vm.provision "shell", path: "scripts/ntp.sh"
	    srv.vm.provision "shell", path: "scripts/install_contrail.sh"
        config.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--memory", "32768", "--cpus", "4"]
        end
    end
end
