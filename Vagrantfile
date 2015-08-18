Vagrant.configure("2") do |config|

    box = "hashicorp/precise64"

    config.vm.define "node1" do |node1|
	node1.vm.hostname = 'node1'
        node1.vm.box = box 
        node1.vm.network :private_network, ip: '192.168.0.100'
	node1.vm.provision "shell", path: "provision-default.sh"
        node1.vm.provision "shell", path: "provision-node1.sh"
    end

    config.vm.define "node2" do |node2|
	node2.vm.hostname = 'node2'
        node2.vm.box = box
        node2.vm.network :private_network, ip: '192.168.0.200'
	node2.vm.provision "shell", path: "provision-default.sh"
        node2.vm.provision "shell", path: "provision-node2.sh"
    end
end
