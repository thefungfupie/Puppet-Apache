class apache::vhost {
  $domain = "chickens24.com"
  


  file {'/etc/httpd/conf.d/vhost.conf':
    moode            => 755,
    group            => 'root',
    owner            => 'root',
    content          => template(vhost.conf.erb)
  }
}