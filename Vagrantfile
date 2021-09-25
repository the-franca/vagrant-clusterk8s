# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "Master" do |node|
    node.vm.box = "generic/debian10"
    node.vm.hostname = "Master"
    node.vm.network "private_network", ip: "192.168.10.21"
    node.vm.provider "virtualbox" do |vb|
      vb.name = "Master"
      vb.memory = "4096"
      vb.cpus = "2"
    end
    node.vm.provision "shell", path: "install.sh"
  end

  config.vm.define "Worker1" do |node|
    node.vm.box = "generic/debian10"
    node.vm.hostname = "Worker1"
    node.vm.network "private_network", ip: "192.168.10.22"
    node.vm.provider "virtualbox" do |vb|
      vb.name = "Worker1"
      vb.memory = "2048"
      vb.cpus = "2"
    end
    node.vm.provision "shell", path: "install.sh"
  end

  config.vm.define "Worker2" do |node|
    node.vm.box = "generic/debian10"
    node.vm.hostname = "Worker2"
    node.vm.network "private_network", ip: "192.168.10.23"
    node.vm.provider "virtualbox" do |vb|
      vb.name = "Worker2"
      vb.memory = "2048"
      vb.cpus = "2"
    end
    node.vm.provision "shell", path: "install.sh"
  end

end
