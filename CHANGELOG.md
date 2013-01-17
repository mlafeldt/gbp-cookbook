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
