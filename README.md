Example git repository with DNS settings, read more here:
[http://www.luadns.com/help.html](http://www.luadns.com/help.html)

To add a domain to Luadns service, add a *DOMAIN-NAME*.lua or *DOMAIN-NAME*.bind
configuration file to git repository and push updates with git.

To remove a domain from Luadns service, remove it's configuration
file from git repository and push updates with git.

* templates.lua - this file is executed before each Lua file 
* example.com.lua - example zone using Lua zone format
* example.com.clones - example.com aliases (one domain per line)
* example.org.bind - example zone using Bind zone format
* 1.168.192.in-addr.arpa.lua - reverse zone using Lua zone format
* domains.route53 - exported domains to Amazon Route 53
  (one domain name per line or use * to export all)

