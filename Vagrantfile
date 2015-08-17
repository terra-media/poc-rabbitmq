Vagrant.configure("2") do |config|

    box = "hashicorp/precise64"

    config.vm.define "node1" do |node1|
        node1.vm.box = box 
        node1.vm.network :private_network, ip: '192.168.0.100'
        node1.vm.provision "shell", path: "provision.sh"
    end

    config.vm.define "node2" do |node2|
        node2.vm.box = box
        node2.vm.network :private_network, ip: '192.168.0.200'
        node2.vm.provision "shell", path: "provision.sh"
    end
end

