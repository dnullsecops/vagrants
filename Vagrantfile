Vagrant.configure("2") do |config|
  # config.vm.provision "shell", inline: "sudo dnf install python2 python-simplejson python-dnf libselinux-python -y -q"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.box_check_update = false

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.memory = 512
    vb.cpus = 1
  end

  config.vm.define "archlinux" do |archlinux|
    archlinux.vm.box = "archlinux/archlinux"
    archlinux.vm.hostname = "archlinux"
    archlinux.vm.network "private_network", ip: "10.0.8.104"
    archlinux.ssh.insert_key = false
    # archlinux.vm.provision "file", source: "archlinux_logo.txt", destination: "/home/vagrant/logo.txt"
    # archlinux.vm.provision 'shell', path: 'add_logo_to_profile.sh'
  end

  config.vm.define "pentest" do |pentest|
    pentest.vm.box = "fedora/25-cloud-base"
    pentest.vm.hostname = "pentest"
    pentest.vm.network "private_network", ip: "10.0.8.102"
    pentest.ssh.insert_key = false
    # pentest.vm.provision "file", source: "pentest_logo.txt", destination: "/home/vagrant/logo.txt"
    # pentest.vm.provision 'shell', path: 'add_logo_to_profile.sh'
  end

  config.vm.define "victim" do |victim|
    victim.vm.box = "fedora/25-cloud-base"
    victim.vm.hostname = "victim"
    victim.vm.network "private_network", ip: "10.0.8.103"
    victim.ssh.insert_key = false
    # victim.vm.provision "file", source: "victim_logo.txt", destination: "/home/vagrant/logo.txt"
    # victim.vm.provision 'shell', path: 'add_logo_to_profile.sh'
  end

end

