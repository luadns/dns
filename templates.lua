--     
-- File: templates.lua
--

function google_app(domain)
  -- Configure mail exchangers
  mx(domain, "aspmx.l.google.com", 5)
  mx(domain, "alt1.aspmx.l.google.com", 10)
  mx(domain, "alt2.aspmx.l.google.com", 10)
  mx(domain, "aspmx2.l.google.com", 20)
  mx(domain, "aspmx3.l.google.com", 20)
  
  -- Additional Google Apps records
  cname(concat("calendar", domain), "ghs.google.com")
  cname(concat("docs", domain), "ghs.google.com")
  cname(concat("mail", domain), "ghs.google.com")
  cname(concat("sites", domain), "ghs.google.com")
  
  -- Configure SPF
  txt(domain, "v=spf1 a mx include:_spf.google.com ~all")
end
