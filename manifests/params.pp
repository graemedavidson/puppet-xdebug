class xdebug::params {
  case $::osfamily {
    'Debian', 'Ubuntu': {
      $pkg      = 'php5-xdebug'
      $php      = 'php'
      $ini_file = '/etc/php5/mods-available/xdebug.ini'
    }
    'RedHat', 'CentOS', 'Fedora': {
      $pkg      = 'php-pecl-xdebug'
      $php      = 'php-fpm'
      $ini_file = '/etc/php.d/xdebug.ini'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
  $service                = 'php-fpm'
  $default_enable         = '1'
  $remote_host            = 'localhost'
  $remote_connect_back    = '1'
  $remote_enable          = '1'
  $remote_port            = '9000'
  $remote_autostart       = '1'
  $show_exception_trace   = '0'
  $show_local_vars        = '0'
  $var_display_max_data   = '10000'
  $var_display_max_depth  = '20'
  $profiler_output_dir    = '/tmp'
  $idekey                 = ''
  $max_nesting_level      = '50000'
}