#
# Cookbook Name:: hosts_from_search
# Recipe:: default
#

nodes = search(:node, node['hosts_from_search']['node_search_query'])

nodes.each do |n|
  unless n['ipaddress'].nil? or n['ipaddress'].empty?
    hosts_file_entry "node #{n['hostname']} entry" do
      ip_address  n['ipaddress']
      hostname    n['hostname']
      aliases     [ n['fqdn'] ]
      comment     "Host entry for #{n['fqdn']}"
      not_if      { n['ipaddress'].nil? or n['ipaddress'].empty? }
    end
  end
end

include_recipe "hosts_file"
