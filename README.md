Git-Buildpackage Cookbook
=========================

Installs and configures git-buildpackage

Requirements
------------

### Platform:

* Ubuntu
* Debian

### Cookbooks:

No dependencies

Attributes
----------

- `node['git-buildpackage']['install_packages']` - List of packages to install
- `node['git-buildpackage']['config_file']` - Path to configuration file
- `node['git-buildpackage']['install_hooks']` - List of build hooks to install
- `node['git-buildpackage']['hooks_dir']` - Path to directory with hook scripts
- `node['git-buildpackage']['config']` - Hash of configuration settings

See file `attributes/default.rb` for more information.

Recipes
-------

### git-buildpackage::default

Installs and configures git-buildpackage

Testing
-------

This cookbook utilizes [chef-bones] for testing. Everything you need to know
about testing this cookbook is explained [here][chef-bones-testing].

[![Build Status](https://travis-ci.org/mlafeldt/gbp-cookbook.png?branch=master)](https://travis-ci.org/mlafeldt/gbp-cookbook)

License and Author
------------------

Author:: Mathias Lafeldt (<mathias.lafeldt@gmail.com>)

Copyright:: 2012-2013, Mathias Lafeldt

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[chef-bones]: https://github.com/mlafeldt/chef-bones
[chef-bones-testing]: https://github.com/mlafeldt/chef-bones/blob/master/TESTING.md
