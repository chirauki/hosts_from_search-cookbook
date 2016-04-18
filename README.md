hosts_from_search Cookbook
==========================

Put other chef nodes in ```/etc/hosts```.

Requirements
------------

This cookbook depends on the [hosts_file](https://supermarket.chef.io/cookbooks/hosts_file) cookbook.

Attributes
----------

Attribute | Description | Type | Default
----------|-------------|------|--------
`['node_search_query']`|Search query on node index to get the hosts that will be included in ```/etc/hosts``` file.|String|`"*:*"`

Usage
-----
#### hosts_from_search::default

Just include `hosts_from_search` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[hosts_from_search]"
  ]
}
```
The recipe will issue a query using the `['node_search_query']` attribute and setup a host entry for each result.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

* Author:: Marc Cirauqui (marc.cirauqui@abiquo.com)

* License:: MIT: http://rem.mit-license.org
