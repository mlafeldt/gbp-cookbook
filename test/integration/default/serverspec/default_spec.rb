require "spec_helper"

describe "git-buildpackage::default" do
  it "installs git-buildpackage" do
    expect(package "git-buildpackage").to be_installed
  end

  it "configures git-buildpackage" do
    config_file = file("/etc/git-buildpackage/gbp.conf")
    expect(config_file).to be_file
    expect(config_file).to be_owned_by "root"
    expect(config_file).to be_grouped_into "root"
    expect(config_file).to be_mode 644
  end

  it "installs build hooks" do
    hooks_dir = file("/usr/share/git-buildpackage/hooks")
    expect(hooks_dir).to be_directory
    expect(hooks_dir).to be_owned_by "root"
    expect(hooks_dir).to be_grouped_into "root"
    expect(hooks_dir).to be_mode 755

    %w(prebuild postbuild posttag).each do |hook|
      hook_file = file("/usr/share/git-buildpackage/hooks/" + hook)
      expect(hook_file).to be_file
      expect(hook_file).to be_owned_by "root"
      expect(hook_file).to be_grouped_into "root"
      expect(hook_file).to be_mode 755
    end
  end
end
