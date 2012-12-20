require 'chefspec'

describe 'The recipe git-buildpackage::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'git-buildpackage::default' }

  it 'should install the package git-buildpackage' do
    chef_run.should install_package 'git-buildpackage'
  end

  it 'should create the config file with the right content' do
    content = <<'EOF'
[DEFAULT]
builder = debuild -i\.git -I.git -uc -us
cleaner = debuild clean
debian-branch = master
debian-tag = debian/%(version)s
ignore-branch = False
upstream-branch = upstream
upstream-tag = upstream/%(version)s

[git-buildpackage]
postbuild = 
posttag = 
prebuild = 
EOF
    chef_run.should create_file_with_content \
      chef_run.node['git-buildpackage']['config_file'], content
  end
end
