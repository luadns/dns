function google_app(domain)
  -- Configure mail exchangers for Google Workspace, see:
  -- https://support.google.com/a/answer/140034?hl=en
  mx(domain, "aspmx.l.google.com", 1)
  mx(domain, "alt1.aspmx.l.google.com", 5)
  mx(domain, "alt2.aspmx.l.google.com", 5)
  mx(domain, "alt3.aspmx.l.google.com", 10)
  mx(domain, "alt4.aspmx.l.google.com", 10)

  -- Additional Google Apps records
  cname(concat("calendar", domain), "ghs.google.com")
  cname(concat("docs", domain), "ghs.google.com")
  cname(concat("mail", domain), "ghs.google.com")
  cname(concat("sites", domain), "ghs.google.com")

  -- Configure SPF
  txt(domain, "v=spf1 a mx include:_spf.google.com ~all")
end
