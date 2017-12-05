export VAGRANT_DEFAULT_PROVIDER=virtualbox

export VAGRANT_HOME=/some/dir/on/large/volume

vagrant up

vagrant snapshot save <vm> clear

vagrant snapshot restore <vm> clear

<vm> is optional VM name

vagrant ssh <vm>

ssh-copy-id vagrant@<vm_ip> 

default password - vagrant

ssh <vm_ip>

sudo -i
