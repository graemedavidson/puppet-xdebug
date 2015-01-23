class xdebug::config (
) {
  file { "$xdebug::ini_file_path" :
    content => template('xdebug/ini.erb'),
    ensure  => present,
    require => Package[$xdebug::params::pkg],
    notify  => Service[$xdebug::params::service],
  }
}