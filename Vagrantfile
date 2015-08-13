Vagrant.configure("2") do |config|

    box = "hashicorp/precise64"

    config.vm.define "node1" do |web|
        web.vm.box = box 
    end

    config.vm.define "node2" do |db|
        db.vm.box = box
    end
end

