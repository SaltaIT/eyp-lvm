class lvm (
            $manage_package        = true,
            $package_ensure        = 'installed',
          ) inherits lvm::params{

  class { '::lvm::install': }
  -> class { '::lvm::config': }
  -> Class['::lvm']

}
