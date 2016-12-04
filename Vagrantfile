# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.gui = false
  end

  config.vm.define "ps_hla" do |ps_hla|
    ps_hla.vm.box = "bento/ubuntu-16.04"
    ps_hla.vm.hostname = "pshla"
    ps_hla.vm.network :private_network, ip: "10.255.10.10"
    ps_hla.vm.provision "shell", path: "ps_prep.sh"
  end

end

