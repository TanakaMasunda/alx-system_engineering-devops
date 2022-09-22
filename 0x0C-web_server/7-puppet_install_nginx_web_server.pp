# Puppet manifest to install nginx listening on port 80
# When querying Nginx at its root / with a GET request (requesting a page) 
# using curl, it must return a page that contains the string Hello World!
# The redirection must be a “301 Moved Permanently”
package { 'nginx':
  ensure => installed,
}

file_line { 'aaaaa':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
