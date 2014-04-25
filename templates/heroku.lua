-- Creates an `alias` record required for
-- applications running on Heroku's platform
-- Usage:
--  heroku_app(_a, "myapp")
function heroku_app(domain, app)
  alias(domain, concat(app, "herokuapp.com"))
end
