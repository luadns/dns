# Example Git repository

[LuaDNS](http://www.luadns.com/) service allows you to manage DNS settings with
git.

This is an example git repository, read more here:
[http://www.luadns.com/help.html#git-integration](http://www.luadns.com/help.html)

## Add a new zone

To add a new zone, create a new file with zone name, appending `.lua` suffix
when using Lua format or `.bind` when using Bind format. Push your changes with
git, the zone and it's records will be added to LuaDNS name servers:

```
touch example.com.lua
git add git example.com.lua
git commit -m "Add example.com zone" example.com.lua
git push
```

## Remove a zone

To remove a zone, remove the file and push the changes to remove zone from
LuaDNS name servers:

```
git rm example.com.lua
git commit -m "Remove example.com zone" example.com.lua
git push
```

## System Templates

You can find [here](https://github.com/luadns/templates) ready to use templates for common services.

Example Usage:

```lua
-- File: example.com.lua
-- Zone: example.com

-- Load system templates.
local templates = require("templates")

-- Apply Google Workspace template.
templates:google_workspace()
```

## Custom Templates

The `.lua` files from `templates` directory of your repository are executed
before other `.lua` files. You can put your global functions and variables
there.

Examples:

* [templates](templates) - All .lua files from this directory are executed before each .lua zone file
* [example.com.lua](example.com.lua) - Example zone using Lua zone format
* [example.com.clones](example.com.clones) - Domain aliases example (one domain per line)
* [example.org.bind](example.org.bind) - Example zone using Bind zone format
* [1.168.192.in-addr.arpa.lua](1.168.192.in-addr.arpa.lua) - Reverse zone using Lua zone format

## Pre-commit Hook

When changes are pushed to the git repository users are receiving an email with
the build status. The workflow can be speed up by using a [pre-commit
hook](.githooks/pre-commit) which validates your DNS files by running syntax checks.
