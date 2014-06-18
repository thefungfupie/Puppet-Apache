class accounts {
 
  user {'funkymonkey':
    name        => 'funkymonkey',
    ensure      => 'present',
    }

    ssh_authorized_key {'funkymonkey':
      name      =>'funkymonkey',
      user      =>'funkeymonkey',
      mode      => 755,
      type      =>'rsa',
      key       =>'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtkapmdcGNIVUk6yFD4E+HR8kBs/lE3cErYtBWeuXm4I1Uc4+ACgsy264BKJCCPcPPEMSqkkO6L3OZUF1ODAmq+g4qBgP98UapUeVc7WU2W2/xDIXBpz7oRqXVBlKBCDsMZ/1L6885Jwgv0z1gXiwqjW5Pxzj5rFttKJmDEkD8KcVewlNuZpGxfRxO+HYJ0At2wy9TBB8k1KehDcGDherecbSAlwbIPf7hMtZDhfGHDPwM2vf6OK1HpSSU9OB7NDKe/xVFA6fu0ndkyRcS1n/Wc+/V03O7HPab4mZhr1wfEc8O+QIyH1ofWkmyp2ekxk7B4VgWMtyk5M6zkhytK56R',
    }

}
