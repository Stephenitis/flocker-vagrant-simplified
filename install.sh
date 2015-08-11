echo >&2 'Installing MongoDB'
brew update
brew install mongodb
curl -O -sSL "https://github.com/Stephenitis/flocker-vagrant-simplified/releases/download/0.0.1/vagrant-cluster-config.zip"
unzip vagrant-cluster-config.zip
echo >&2 'Installing MongoDB'
vagrant destroy
vagrant up
echo >&2 'Verifying that your 2 Vagrant VMs are running and accepting SSH connections'
vagrant ssh -c hostname node1
vagrant ssh -c hostname node2
eval $(ssh-agent)
ssh-add ~/.vagrant.d/insecure_private_key
echo >&2 'Flocker Vagrant Cluster is now setup'
echo >&2 'SSH into your nodes at the following IP Addresses:'
echo >&2 'node1 : 172.16.255.250'
echo >&2 'node1 : 172.16.255.250'


