class xdebug::config (
) {
  file { "$ini_file_path" :
    content => template('xdebug/ini.erb'),
    ensure  => present,
    require => Package[$xdebug::params::pkg],
    notify  => Service[$service],
  }
}