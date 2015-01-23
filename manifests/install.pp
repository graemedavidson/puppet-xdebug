class xdebug::install {
  if defined(Package[$method_package]) == false {
    package { 'xdebug':
      name    => $xdebug::params::pkg,
      ensure  => installed,
      require => Package[$xdebug::params::php],
      notify  => Service[$service],
    }
  }
}