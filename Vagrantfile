# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1", auto_correct: true
  config.vm.network "forwarded_port", guest: 3306, host: 3306, host_ip: "127.0.0.1", auto_correct: true

  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"


  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.name = "vagrant lamp"
  end

  config.vm.provision "shell", path: "scripts/vagrant/provision-lamp.sh"

end
