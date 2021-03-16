Vagrant.configure("2") do |config|
  config.vm.define "nfs-server" do |m|
    m.vm.hostname = "nfs-server"
    m.vm.box = "ubuntu/xenial64"
    m.vm.network "private_network", ip: "192.168.33.10"
    m.vm.provider :virtualbox do |vb|
  	vb.customize [ 'modifyvm', :id, '--name', 'nfs-server' ]
  	vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
  	vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
    end
  end
  config.vm.define "nfs-client" do |m|
    m.vm.hostname = "nfs-client"
    m.vm.box = "ubuntu/xenial64"
    m.vm.network "private_network", ip: "192.168.33.11"
    m.vm.provider :virtualbox do |vb|
  	vb.customize [ 'modifyvm', :id, '--name', 'nfs-client' ]
  	vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
  	vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
    end
  end
end

