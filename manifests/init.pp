# == Class: xdebug
#
# Install and configure xdebug
#
# === Parameters
#  [*ini_file_path*]          - ini file path (default '')
#  [*default_enable*]         - default enable xdebug (default '')
#  [*remote_enable*]          - allow remote connections (default '')
#  [*remove_connect_back*]    - allow connect back (default '')
#  [*remote_port*]            - remote port (default '')
#  [*remote_handler*]         - remote handler (default '')
#  [*remote_host*]            - remote host (default '')
#  [*remote_autostart*]       - autostart remote connections (default '')
#  [*show_local_vars*]        - show local vars (default '')
#  [*var_display_max_data*]   - max display data (default '')
#  [*var_display_max_depth*]  - max display depth (default '')
#  [*profiler_output_dir*]    - profile output dir (default '/tmp')
#  [*idekey*]                 - identification key for clients (default '')
#  [*max_nesting_level*]      - max nesting level (default '')
#
# === Examples
#
# === Authors
# Graeme Davidson <graeme.davidson@capablue.com>
#
class xdebug (
  $service                = $xdebug::params::service,
  $ini_file_path          = $xdebug::params::ini_file_path,
  $default_enable         = $xdebug::params::default_enable,
  $remote_enable          = $xdebug::params::remote_enable,
  $remove_connect_bacl    = $xdebug::params::remote_enable,
  $remote_port            = $xdebug::params::remove_connect_back,
  $remote_handler         = $xdebug::params::remote_port,
  $remote_host            = $xdebug::params::remote_handler,
  $remote_autostart       = $xdebug::params::remote_host,    
  $show_exception_trace   = $xdebug::params::remote_autostart,
  $show_local_vars        = $xdebug::params::show_local_vars,  
  $var_display_max_data   = $xdebug::params::var_display_max_data,
  $var_display_max_depth  = $xdebug::params::var_display_max_depth,
  $profiler_output_dir    = $xdebug::params::profiler_output_dir,
  $idekey                 = $xdebug::params::idekey,
  $max_nesting_level      = $xdebug::params::max_nesting_level
) inherits xdebug::params {
  class { 'dashing::install': }
  class { 'dashing::config': }
}