#
# Cookbook Name:: git-buildpackage
# Attributes:: default
#
# Copyright (C) 2012 Mathias Lafeldt <mathias.lafeldt@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['git-buildpackage']['install_packages'] = %w(git-buildpackage)

default['git-buildpackage']['config_file'] = '/etc/git-buildpackage/gbp.conf'

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
default['git-buildpackage']['config']['DEFAULT']['builder'] = 'debuild -i\.git -I.git -uc -us'
default['git-buildpackage']['config']['DEFAULT']['cleaner'] = 'debuild clean'
default['git-buildpackage']['config']['DEFAULT']['upstream-branch'] = 'upstream'
default['git-buildpackage']['config']['DEFAULT']['upstream-tag'] = 'upstream/%(version)s'
default['git-buildpackage']['config']['DEFAULT']['debian-branch'] = 'master'
default['git-buildpackage']['config']['DEFAULT']['debian-tag'] = 'debian/%(version)s'
default['git-buildpackage']['config']['DEFAULT']['ignore-branch'] = 'False'

default['git-buildpackage']['config']['git-buildpackage']['prebuild'] = nil
default['git-buildpackage']['config']['git-buildpackage']['postbuild'] = nil
default['git-buildpackage']['config']['git-buildpackage']['posttag'] = nil
