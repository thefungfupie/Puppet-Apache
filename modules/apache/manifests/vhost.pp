class apache::vhost {
  $domain = "chickens24.com"
  


  file {'/etc/httpd/conf.d/vhost.conf':
    mode            => 755,
    group            => 'root',
    owner            => 'root',
    content          => template("apache/vhost.conf.erb"),
  }
}
