Vagrant.configure("2") do |config|
  # config.vm.provision "shell", inline: "sudo dnf install python2 python-simplejson python-dnf libselinux-python -y -q"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.box_check_update = false

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.memory = 512
    vb.cpus = 1
  end

  config.vm.define "pentest" do |pentest|
    pentest.vm.box = "fedora/27-cloud-base"
    pentest.vm.hostname = "pentest"
    pentest.vm.network "private_network", ip: "10.0.8.102"
    pentest.ssh.insert_key = false
    # pentest.vm.provision "file", source: "pentest_logo.txt", destination: "/home/vagrant/logo.txt"
    # pentest.vm.provision 'shell', path: 'add_logo_to_profile.sh'
  end

  config.vm.define "target1" do |target1|
    target1.vm.box = "fedora/27-cloud-base"
    target1.vm.hostname = "target1"
    target1.vm.network "private_network", ip: "10.0.8.103"
    target1.ssh.insert_key = false
  end

  config.vm.define "target2" do |target2|
    target2.vm.box = "fedora/27-cloud-base"
    target2.vm.hostname = "target2"
    target2.vm.network "private_network", ip: "10.0.8.104"
    target2.ssh.insert_key = false
  end

end

