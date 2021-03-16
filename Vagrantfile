Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/groovy64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "shell", path: "script.sh"
  config.vm.synced_folder "./web1", "/var/www/html"
  config.vm.provider :virtualbox do |vb|
	vb.customize [ 'modifyvm', :id, '--name', 'prueba' ]
	vb.customize [ 'modifyvm', :id, '--cpus', '4' ]
	vb.customize [ 'modifyvm', :id, '--memory', '4096' ]
  end
end
