Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2

    # Fixed host DNS for improving network performance
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]

    # Enabling IO APIC so vm can use additional cores
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  #config.vm.provision :shell, inline: "sudo snap install ansible-kz6fittycent --edge"
  config.vm.provision :shell, path: "install_ansible.sh"
  config.vm.synced_folder "./ansible", "/home/vagrant/ansible"

  config.vm.provision :shell, inline: 'ansible-playbook -i localhost, --extra-vars="username=gerald password=1" /home/vagrant/ansible/site.yml'
  config.vm.provision "file", source: "ansible", destination: "/home/vagrant/ansible"
end