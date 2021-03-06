#
# Cookbook Name:: git-buildpackage
# Recipe:: default
#
# Copyright (C) 2012-2013 Mathias Lafeldt <mathias.lafeldt@gmail.com>
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

node['git-buildpackage']['install_packages'].each { |pkg| package pkg }

template node['git-buildpackage']['config_file'] do
  source 'gbp.conf.erb'
  owner  'root'
  group  'root'
  mode   '0644'
  action :create
  variables(:config => node['git-buildpackage']['config'])
end

directory node['git-buildpackage']['hooks_dir'] do
  owner     'root'
  group     'root'
  mode      '0755'
  recursive true
  action    :create
end

node['git-buildpackage']['install_hooks'].each do |hook|
  template ::File.join(node['git-buildpackage']['hooks_dir'], hook) do
    source "#{hook}-hook.erb"
    owner  'root'
    group  'root'
    mode   '0755'
    action :create
  end
end
