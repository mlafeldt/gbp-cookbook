1.1.1 (Feb 2 2014)
------------------

* Add RuboCop style and lint checks.

1.1.0 (Dec 8 2013)
------------------

* Use Test Kitchen for integration testing.
* Update to ChefSpec v3.
* Update README.

1.0.5 (Jul 29 2013)
-------------------

* Use [chef-bones](https://github.com/mlafeldt/chef-bones) gem for testing.
* Add serverspec integration test.
* No longer downgrade RubyGems on Travis.

1.0.4 (Apr 19 2013)
-------------------

Take over changes from [skeleton cookbook](https://github.com/mlafeldt/skeleton-cookbook):

* Update gem dependencies (berkshelf 1.4, foodcritic 2.0, chef 10.24).
* Remove Vagrant from gems; get it from http://downloads.vagrantup.com/.
* Update Vagrantfile to v2 syntax and enable the _vagrant-berkshelf_ plugin.
* Add new tasks to Rakefile, e.g. `clobber` and `test:integration`. Replace
  `COOKBOOKS_PATH` with `FIXTURES_PATH` which defaults to _fixtures_.
* Let Travis run tests against Ruby 2.0.0.

1.0.3 (Jan 17 2013)
-------------------

* Install pre-build, post-build, and post-tag build hooks. New attributes are
  `node['git-buildpackage']['install_hooks']` and
  `node['git-buildpackage']['hooks_dir']`.

1.0.2 (Jan 15 2013)
-------------------

* Define config hash as JSON data in Vagrantfile. No longer define default config
  attributes in cookbook (`node['git-buildpackage']['config']`).
* Update gems.
* Update copyright year.
* Add this CHANGELOG file.

1.0.1 (Dec 20 2012)
-------------------

* Sort configuration entries so the content/checksum of `gbp.conf` stays the
  same as long as `node['git-buildpackage']['config']` hasn't changed.

1.0.0 (Dec 19 2012)
-------------------

* First tagged version.
