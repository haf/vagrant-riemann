# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "CentOS-6.3_x86_64-small"
  config.vm.box_url = "https://1412126a-vagrant.s3.amazonaws.com/CentOS-6.3-x86_64-reallyminimal.box"

  config.vm.forward_port 5555, 5555
  config.vm.forward_port 5556, 5556
  config.vm.forward_port 4567, 4567

  config.vm.provision :puppet, :options => ["--debug", "--verbose", "--summarize", "--reports", "store"] do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path    = "modules"
    puppet.manifest_file  = "site.pp"
  end
end
