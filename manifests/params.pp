class xdebug::params {
  case $::osfamily {
    'Debian': {
      $pkg      = 'php5-xdebug'
      $php      = 'php'
      $ini_file = '/etc/php5/mods-available/xdebug.ini'
    }
    'RedHat': {
      $pkg  = 'php-pecl-xdebug'
      $php  = 'php-fpm'
      $ini_file = '/etc/php.d/xdebug.ini'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
}