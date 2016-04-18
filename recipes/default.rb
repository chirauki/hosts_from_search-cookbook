#
# Cookbook Name:: hosts_from_search
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

nodes = search(:node, node['hosts_from_search']['node_search_query'])

nodes.each do |n|
  hosts_file_entry n['ipaddress'] do
    hostname n['hostname']
    aliases [ n['fqdn'] ]
    comment "Host entry for #{n['fqdn']}"
  end
end

include_recipe "hosts_file"
