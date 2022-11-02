# Fixes bad `phpp` extensions to `php` in the WordPress file `wp-settings.php` using puppet code

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
