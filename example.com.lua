-- File: example.com.lua
-- Variable _a is replaced with zone name by Luadns
-- _a = "example.com"

-- A records
a(_a, "1.2.3.4")

-- CNAME records
cname("www", _a)
cname("ftp", _a)

-- Templates (see templates.lua)
google_app(_a)
