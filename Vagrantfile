Vagrant.configure("2") do |config|

  config.vm.define "grokdebug" do |grokdebug|
  	grokdebug.vm.box = "centos65-x86_64-20131205"
  	grokdebug.vm.provision :shell, :path => "provision.sh"
  	grokdebug.vm.synced_folder "sharedfolder/", "/home/vagrant/shared"
  	grokdebug.ssh.forward_agent = true
	grokdebug.vm.network "forwarded_port", guest: 80, host: 8181
  	grokdebug.vm.provider "virtualbox" do |v|
    		v.memory = 300
  	end
  end
end
