class lvm::install inherits lvm {

  if($lvm::manage_package)
  {
    package { $lvm::params::package_name:
      ensure => $lvm::package_ensure,
    }
  }

}
