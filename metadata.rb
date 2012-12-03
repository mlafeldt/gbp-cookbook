name              "git-buildpackage"
maintainer        "Mathias Lafeldt"
maintainer_email  "mathias.lafeldt@gmail.com"
license           "Apache 2.0"
description       "Installs git-buildpackage"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"
recipe            "git::default", "Installs git-buildpackage"

supports "ubuntu"
supports "debian"