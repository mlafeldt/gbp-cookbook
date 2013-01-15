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

# List of packages to install
default['git-buildpackage']['install_packages'] = %w(git-buildpackage)

# Path to configuration file
default['git-buildpackage']['config_file'] = '/etc/git-buildpackage/gbp.conf'

# Hash of configuration settings
#
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
default['git-buildpackage']['config'] = Hash.new
