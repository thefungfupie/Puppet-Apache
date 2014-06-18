class ssh {

    package{'openssh':
      ensure    => installed,
    }

    file {'/etc/ssh/sshd_config':
     content    => template("ssh/sshd_config.erb"),
     notify     => Service['ssh'],
    }

    service{'ssh':
      ensure    => running,
      require   => package['openssh'],
    }

  include ssh
  incluude accounts
}