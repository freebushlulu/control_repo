class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCm/sJCa1mR/iDUjcq2A4bek/CN4Hxt6LrcQXzEJg9WS9ZWx8l7KOyGVthFPYeeBmRkVA7ZYVSZwYhPddZOn+eUj6LAGRmFzrRxh64fw9N3m9Ewm6jMRaCZAKTFZyHd7OzVvA2qKyYINhjB0v74DF8DBK3AJUl3bRoNbc88T7OUl9Y+5qwQsmy0yA3CTTqykRlscJdt33sRZmMwxtDt/n22szTf36vckaSia2df2wTPMmBot8Z+icfq8qQilmPwvQ4eCvUTwe5nStoJ2hN/0Nz5+KhxXpQWKF9brRJM1Eo54GIwqkbKb0tSpozqWDyCDJoBaPf0qlA/Pd6rpl+11dW3',
	}  
}
