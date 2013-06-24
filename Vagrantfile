# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.hostname = 'gbp-ubuntu'

  # Enable Berkshelf plugin which will make cookbooks available to Vagrant
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'apt'
    chef.add_recipe 'git-buildpackage'

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
