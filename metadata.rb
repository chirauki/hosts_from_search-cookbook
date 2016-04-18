name             'hosts_from_search'
maintainer       'Abiquo'
maintainer_email 'marc.cirauqui@abiquo.com'
license          'MIT'
description      'Setup hosts file from a chef search'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'
source_url       "https://github.com/chirauki/hosts_from_search-cookbook" if respond_to?(:source_url)
issues_url       "https://github.com/chirauki/hosts_from_search-cookbok/issues" if respond_to?(:issues_url)

depends          'hosts_file', '~> 0.2.2'

