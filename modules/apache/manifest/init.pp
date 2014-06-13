class apache{
	package {'apache':
		ensure    => installed,
	}
	service { 'apache':
		ensure    => running,
		require   => Package['apache'],
		subscribe => File['/etc/httpd/conf/httpd.conf']
	}
	file { '/etc/httpd/conf/httpd.conf':
		require   => Package['apache'],
		notify    => Service['apahce'],
	}

}
