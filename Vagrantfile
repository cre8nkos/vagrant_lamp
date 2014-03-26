# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # LAMP
  config.vm.define :lamp do |lamp|
    # Every Vagrant virtual environment requires a box to build off of.
    lamp.vm.box = "precise32"

    # Provisioning
    lamp.vm.provision :shell, :path => "bootstrap-lamp.sh"

    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    lamp.vm.network :forwarded_port, guest: 80, host: 8080

    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    #lamp.vm.network :private_network, ip: "192.168.33.20"
  end
end