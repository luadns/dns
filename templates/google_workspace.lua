function google_workspace(domain)
  -- Configure mail exchangers for Google Workspace, ses:
  -- https://support.google.com/a/answer/140034?hl=en
  mx(domain, "smtp.google.com", 1)

  -- Additional Google Apps records, see:
  -- https://support.google.com/a/answer/53340?hl=en
  cname(concat("mail", domain), "ghs.googlehosted.com")
  cname(concat("calendar", domain), "ghs.googlehosted.com")
  cname(concat("groups", domain), "ghs.googlehosted.com")
end
