name             'hosts_from_search'
maintainer       'Abiquo'
maintainer_email 'marc.cirauqui@abiquo.com'
license          'MIT'
description      'Setup hosts file from a chef search'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'hosts_file', '~> 0.2.2'