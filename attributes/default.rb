default['git-buildpackage']['install_packages'] = %w(git-buildpackage)

# These attributes map 1:1 to the configuration file of git-buildpackage. You can
# define default global options as well as command-specific options:
#
#   node['git-buildpackage']['config']['DEFAULT'] - default global options
#   node['git-buildpackage']['config']['git-buildpackage'] - options specific to git-buildpackage
#   node['git-buildpackage']['config']['git-dch'] - options specific to git-dch
#   etc.
#
# For example,
#
#   node['git-buildpackage']['config']['DEFAULT']['ignore-branch'] = 'False'
#
# will set the "ignore-branch" option to "False" for the "DEFAULT" section.
#
default['git-buildpackage']['config']['DEFAULT']['builder'] = 'debuild -i\.git -I.git'
default['git-buildpackage']['config']['DEFAULT']['cleaner'] = 'debuild clean'
default['git-buildpackage']['config']['DEFAULT']['upstream-branch'] = 'upstream'
default['git-buildpackage']['config']['DEFAULT']['upstream-tag'] = 'upstream/%(version)s'
default['git-buildpackage']['config']['DEFAULT']['debian-branch'] = 'master'
default['git-buildpackage']['config']['DEFAULT']['debian-tag'] = 'debian/%(version)s'
default['git-buildpackage']['config']['DEFAULT']['ignore-branch'] = 'False'

default['git-buildpackage']['config']['git-buildpackage']['prebuild'] = nil
default['git-buildpackage']['config']['git-buildpackage']['postbuild'] = nil
default['git-buildpackage']['config']['git-buildpackage']['posttag'] = nil
