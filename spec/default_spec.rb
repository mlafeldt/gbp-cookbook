require "spec_helper"

describe "git-buildpackage::default" do
  let (:chef_run) do
    chef_run = ChefSpec::Runner.new do |node|
      node.set["git-buildpackage"] = {
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
    end.converge(described_recipe)
  end

  it "should install the package git-buildpackage" do
    chef_run.should install_package "git-buildpackage"
  end

  it "should create the config file with the right content" do
    chef_run.should render_file(chef_run.node["git-buildpackage"]["config_file"]).
      with_content <<EOS
[DEFAULT]
builder = pdebuild
cleaner = fakeroot debian/rules clean

[git-buildpackage]
ignore-branch = False
EOS
  end

  it "should create the hooks directory" do
    chef_run.should create_directory chef_run.node["git-buildpackage"]["hooks_dir"]
  end

  %w(prebuild postbuild posttag).each do |hook|
    it "should install the #{hook} hook script" do
      script = ::File.join(chef_run.node["git-buildpackage"]["hooks_dir"], hook)
      chef_run.should render_file script
    end
  end
end
