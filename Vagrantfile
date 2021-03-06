# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty32"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 80, host: 8000
  config.vm.network :forwarded_port, guest: 6379, host: 63790
  config.vm.network :forwarded_port, guest: 3306, host: 33060

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :private_network, ip: "192.168.10.10"
  config.vm.hostname = "phalcon.local";

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "app/", "/var/www/html/", id: "vagrant-root", group: "www-data", :mount_options =>  ["dmode=777","fmode=666"]

  config.vm.provision :shell, :path => "provision/shell/install_init.sh"
  config.vm.provision :shell, :path => "provision/shell/install_apache.sh"
  config.vm.provision :shell, :path => "provision/shell/install_mysql.sh"
  config.vm.provision :shell, :path => "provision/shell/install_php.sh"
  config.vm.provision :shell, :path => "provision/shell/install_phalcon.sh"
  config.vm.provision :shell, :path => "provision/shell/install_phalcondevtools.sh"
  config.vm.provision :shell, :path => "provision/shell/install_phpqatools.sh"
  config.vm.provision :shell, :path => "provision/shell/install_nodejs.sh"
  config.vm.provision :shell, :path => "provision/shell/install_mongodb.sh"
  config.vm.provision :shell, :path => "provision/shell/install_redis.sh"
  config.vm.provision :shell, :path => "provision/shell/install_composer.sh"
end
