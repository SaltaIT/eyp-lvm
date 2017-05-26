class lvm::service inherits lvm {

  #
  validate_bool($lvm::manage_docker_service)
  validate_bool($lvm::manage_service)
  validate_bool($lvm::service_enable)

  validate_re($lvm::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${lvm::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $lvm::manage_docker_service)
  {
    if($lvm::manage_service)
    {
      service { $lvm::params::service_name:
        ensure => $lvm::service_ensure,
        enable => $lvm::service_enable,
      }
    }
  }
}
