Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.provision :shell, path: "install_ansible.sh"
  config.vm.synced_folder "./ansible", "/home/vagrant/ansible"
  config.vm.provision :shell, inline: 'cd /home/vagrant/ansible && ansible-playbook -i inventory site.yml --extra-vars="username=gerald password=1"'

  #config.vm.provision "file", source: "ansible", destination: "/home/vagrant/ansible"
end