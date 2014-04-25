Example git repository with DNS settings, read more here:
[http://www.luadns.com/help.html](http://www.luadns.com/help.html)

To add a domain to LuaDNS service, add a *DOMAIN-NAME*.lua or *DOMAIN-NAME*.bind
configuration file to git repository and push updates with git.

To remove a domain from LuaDNS service, remove it's configuration
file from git repository and push updates with git.

* templates.lua - This file is executed before each .lua zone file (depreciated)
* templates - All .lua files from this directory are executed automatically before each .lua zone file
* example.com.lua - Example zone using Lua zone format
* example.com.clones - Domain aliases examaple (one domain per line)
* example.org.bind - Example zone using Bind zone format
* 1.168.192.in-addr.arpa.lua - Reverse zone using Lua zone format
