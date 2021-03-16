Vagrant.configure("2") do |config|
  config.vm.define "haproxy" do |m|
    m.vm.hostname = "haproxy-server"
    m.vm.box = "ubuntu/xenial64"
    m.vm.provision "shell", path: "haproxy-script.sh"
    m.vm.network "private_network", ip: "192.168.33.10"
    m.vm.provider :virtualbox do |vb|
  	vb.customize [ 'modifyvm', :id, '--name', 'hap-server' ]
  	vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
  	vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
    end
  end
  config.vm.define "web1" do |m|
    m.vm.hostname = "web1"
    m.vm.box = "ubuntu/groovy64"
    m.vm.provision "shell", path: "script.sh"
    m.vm.synced_folder "./web1", "/var/www/html"
    m.vm.network "private_network", ip: "192.168.33.11"
    m.vm.provider :virtualbox do |vb|
  	vb.customize [ 'modifyvm', :id, '--name', 'web1' ]
  	vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
  	vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
    end
  end
  config.vm.define "web2" do |m|
    m.vm.hostname = "web2"
    m.vm.box = "ubuntu/xenial64"
    m.vm.provision "shell", path: "script.sh"
    m.vm.synced_folder "./web2", "/var/www/html"
    m.vm.network "private_network", ip: "192.168.33.12"
    m.vm.provider :virtualbox do |vb|
  	vb.customize [ 'modifyvm', :id, '--name', 'web2' ]
  	vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
  	vb.customize [ 'modifyvm', :id, '--memory', '512' ]
    end
  end
end

