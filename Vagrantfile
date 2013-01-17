# vi: set ft=ruby :

require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.host_name = "gbp-ubuntu"

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[apt::default]",
      "recipe[git-buildpackage::default]"
    ]

    chef.json = {
      "git-buildpackage" => {
        "config" => {
          "DEFAULT" => {
            "builder"         => "debuild -i\\.git -I.git -uc -us",
            "cleaner"         => "debuild clean",
            "upstream-branch" => "upstream",
            "upstream-tag"    => "upstream/%(version)s",
            "debian-branch"   => "master",
            "debian-tag"      => "debian/%(version)s",
            "ignore-branch"   => "False"
          }
        }
      }
    }

    chef.log_level = :debug
  end
end
