require 'chef_bones/unit_spec_helper'

describe 'The recipe git-buildpackage::default' do
  let (:chef_run) do
    chef_run = ChefSpec::ChefRunner.new(
      :platform      => 'ubuntu',
      :version       => '12.04',
      :log_level     => :error,
      :cookbook_path => COOKBOOK_PATH
    )
    chef_run.node.set['git-buildpackage'] = {
      "config" => {
        "DEFAULT" => {
          "builder" => "pdebuild",
          "cleaner" => "fakeroot debian/rules clean"
        },
        "git-buildpackage" => {
          "ignore-branch" => "False"
        }
      }
    }
    Chef::Config.force_logger true
    chef_run.converge 'git-buildpackage::default'
    chef_run
  end

  it 'should install the package git-buildpackage' do
    chef_run.should install_package 'git-buildpackage'
  end

  it 'should create the config file with the right content' do
    content = <<'EOF'
[DEFAULT]
builder = pdebuild
cleaner = fakeroot debian/rules clean

[git-buildpackage]
ignore-branch = False
EOF
    chef_run.should create_file_with_content \
      chef_run.node['git-buildpackage']['config_file'], content
  end

  it 'should create the hooks directory' do
    chef_run.should create_directory chef_run.node['git-buildpackage']['hooks_dir']
  end

  %w(prebuild postbuild posttag).each do |hook|
    it "should install the #{hook} hook script" do
      script = ::File.join(chef_run.node['git-buildpackage']['hooks_dir'], hook)
      chef_run.should create_file script
    end
  end
end
