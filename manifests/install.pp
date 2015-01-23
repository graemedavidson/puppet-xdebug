class xdebug::install {
  package { $xdebug::params::pkg:
    ensure  => installed,
    require => Package[$xdebug::params::php],
    notify  => Service[$xdebug::params::service],
  }
}