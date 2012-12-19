require 'chefspec'

describe 'The recipe git-buildpackage::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'git-buildpackage::default' }

  it 'should install the package git-buildpackage' do
    chef_run.should install_package 'git-buildpackage'
  end

  # content test needs ordered hash
  if RUBY_VERSION >= '1.9'
    it 'should create the git-buildpackage config file with right content' do
      content = <<'EOF'
[DEFAULT]
builder = debuild -i\.git -I.git -uc -us
cleaner = debuild clean
upstream-branch = upstream
upstream-tag = upstream/%(version)s
debian-branch = master
debian-tag = debian/%(version)s
ignore-branch = False

[git-buildpackage]
prebuild = 
postbuild = 
posttag = 
EOF
      chef_run.should create_file_with_content \
        chef_run.node['git-buildpackage']['config_file'], content
    end
  else
    it 'should create the git-buildpackage config file' do
      chef_run.should create_file \
        chef_run.node['git-buildpackage']['config_file']
    end
  end
end
