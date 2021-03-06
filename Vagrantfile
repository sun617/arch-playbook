# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "archlinux/archlinux"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
    # Customize the amount of memory on the VM:
    vb.memory = "8192"

    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']

    # https://stackoverflow.com/questions/19490652/how-to-sync-time-on-host-wake-up-within-virtualbox
    vb.customize [ "guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000 ]

    { home: 50, docker: 50 }.each_with_index do |(name, size), index|
      filename = File.expand_path("~/VirtualBox VMs/archlinux/#{name}.vdi")
      unless File.exists? filename
        vb.customize ['createmedium', 'disk', '--filename', filename, '--size', size * 1024]
      end
      vb.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--device', 1, '--port', index, '--type', 'hdd', '--medium', filename]
    end
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo pacman -S --noconfirm gptfdisk

    # add home partition
    if ! lsblk | grep sdb1 > /dev/null; then
      sudo sgdisk -n 1:0:0 -t 8302 /dev/sdb
      sudo mkfs.ext4 /dev/sdb1
      home_uuid=$(sudo blkid --match-tag UUID --output value /dev/sdb1)
      cp -a /home/vagrant /tmp
      sudo sed -ie "$ a # /home was on /dev/sdb1\\\\nUUID=${home_uuid} /home           ext4    defaults        0       2" /etc/fstab
    fi
    # add docker partition
    if ! lsblk | grep sdc1 > /dev/null; then
      sudo sgdisk -n 1:0:0 /dev/sdc
      sudo mkfs.ext4 /dev/sdc1
      docker_uuid=$(sudo blkid --match-tag UUID --output value /dev/sdc1)
      sudo mkdir -p /var/lib/docker
      sudo sed -ie "$ a # /var/lib/docker was on /dev/sdc1\\\\nUUID=${docker_uuid} /var/lib/docker ext4    defaults        0       2" /etc/fstab
    fi
    # mount added partions
    if ! (df | grep ^/dev/sdb1 && df | grep ^/dev/sdc1) > /dev/null; then
      sudo mount -a
      if [ ! -d /home/vagrant ]; then
        sudo mv /tmp/vagrant /home
      fi
    fi
  SHELL

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "vagrant-playbook.yml"
    ansible.inventory_path = "local"
    ansible.limit = "vm"
  end
end
