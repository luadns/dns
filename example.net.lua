-- File: example.net.lua
-- Zone: example.net
-- SOA record si automatically generated
-- Variable _a is replaced with zone name
-- _a = "example.net"

-- A records
a("a.ns", "192.168.1.2")
a("b.ns", "192.168.1.3")
a("mx1", "192.168.1.11")
a("mx2", "192.168.1.12")
a("sipserver", "192.168.1.200")

-- AAAA records
aaaa(_a, "2001:4860:4860::8888")

-- MX records
mx(_a, concat("mx1", _a), 10)
mx(_a, concat("mx2", _a), 20)

-- NS records
ns("tokyo", concat("a.ns", _a))
ns("tokyo", concat("b.ns", _a))

-- CNAME records
cname("www", _a)

-- TXT records
txt(_a, "google-site-verification=vEj1ZcGtXeM_UEjnCqQEhxPSqkS9IQ4PBFuh48FP8o4")

-- SPF records
spf(_a, "v=spf1 a mx ~all")

-- SRV records
srv("_sip._tcp", "sipserver.example.net", 5060)

-- Wildcard records
a("*.user", "192.168.1.100")
mx("*.user", concat("mail", _a))
