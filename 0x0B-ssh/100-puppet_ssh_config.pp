# Using Puppet to create a file and ensure it has a specific content
include stdlib

$contents = @(EOT)
Host *
	PasswordAuthentication no
Host alx_ssh_remote
  HostName 18.204.11.186
  IdentityFile ~/.ssh/school
  User ubuntu
EOT

file { '/etc/ssh/ssh_config':
    ensure  => file,
    content => $contents,
}
