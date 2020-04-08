# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: '192.168.10.100'
  config.hostsupdater.aliases = ["development.local"]

  config.vm.synced_folder '/Users/AshIsbitt/Desktop/Python_Environment_Project', '/home/ubuntu/Python_Environment_Project'

  config.vm.provision 'shell', path: 'provision.sh'

end
