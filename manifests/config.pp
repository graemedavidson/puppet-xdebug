class xdebug::config (
) {
  file { "$ini_file_path" :
    content => template('xdebug/templates/ini.erb'),
    ensure  => present,
    require => Package['xdebug'],
    notify  => Service[$service],
  }
}