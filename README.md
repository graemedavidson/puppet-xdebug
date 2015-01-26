## puphpet-xdebug
================

Tasks
-------
* currently creates a seperate config file seperate from the extension ini file.
* Hiera config is a bit ugly and could use setting as a hash.
* Tests

Puppet module for installing XDEBUG PHP Extension

Installs Xdebug Support.

Hiera Example usage:

```yaml
xdebug::service: 'php-fpm'
xdebug::ini_file_path: '/etc/php.d/xdebug-config.ini'
xdebug::remote_connect_back: '1'
xdebug::remote_enable: '1'
xdebug::remote_port: '9050'
xdebug::remote_autostart: '1'
xdebug::show_exception_trace: '0'
xdebug::show_local_vars: '0'
xdebug::var_display_max_data: '10000'
xdebug::var_display_max_depth: '20'
xdebug::profiler_output_dir: '/tmp'
xdebug::idekey: 'PHPSTORM'
xdebug::max_nesting_level: '50000'
```

Created by: Graeme Davidson