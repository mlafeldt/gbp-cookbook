default['git-buildpackage']['packages'] = %w(git-buildpackage)

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

#default['git-buildpackage']['config']['git-import-orig'] = {}
#default['git-buildpackage']['config']['git-import-dsc'] = {}
#default['git-buildpackage']['config']['git-dch'] = {}
#default['git-buildpackage']['config']['gbp-pq'] = {}
#default['git-buildpackage']['config']['gbp-clone'] = {}
#default['git-buildpackage']['config']['gbp-pull'] = {}
#default['git-buildpackage']['config']['gbp-create-remote-repo'] = {}
