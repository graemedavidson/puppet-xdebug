define xdebug::config (
  $ini_file_path          = undef,
  $default_enable         = undef,
  $remote_enable          = undef,
  $remove_connect_bacl    = undef,
  $remote_port            = undef,
  $remote_handler         = undef,
  $remote_host            = undef,
  $remote_autostart       = undef,
  $show_exception_trace   = undef,
  $show_local_vars        = undef,
  $var_display_max_data   = undef,
  $var_display_max_depth  = undef,
  $profiler_output_dir    = undef,
  $idekey                 = undef,
  $max_nesting_level      = 50000
  )
{
  file { "$ini_file_path" :
  content => template('xdebug/ini.erb'),
  ensure  => present,
  require => Package['xdebug'],
  notify  => Service['apache2'],
  }
}