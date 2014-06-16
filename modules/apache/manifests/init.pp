class apache{
	package {'httpd':
		ensure    => installed,
	}
	service { 'httpd':
		ensure    => running,
		require   => Package['httpd'],
		#subscribe => File['/etc/httpd/conf/httpd.conf']
	}
	#file { '/etc/httpd/conf/httpd.conf':
		#require   => Package['apache'],
#		notify    => Service['apahce'],
#	}

}
