name              "git-buildpackage"
maintainer        "Mathias Lafeldt"
maintainer_email  "mathias.lafeldt@gmail.com"
license           "Apache 2.0"
description       "Installs and configures git-buildpackage"
long_description  IO.read(File.join(File.dirname(__FILE__), "README.md"))
version           "1.1.0"
recipe            "git-buildpackage::default", "Installs and configures git-buildpackage"

supports "ubuntu"
supports "debian"
