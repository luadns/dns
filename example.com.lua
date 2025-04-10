-- File: example.com.lua
-- Zone: example.com
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = "example.com"

-- A records
a("", "1.2.3.4")

-- CNAME records
cname("www", _a)

-- CAA records
caa("", "letsencrypt.org", "issue")
caa("", "mailto:joe@example.com", "iodef")

-- Templates (see templates.lua)
google_app(_a)
