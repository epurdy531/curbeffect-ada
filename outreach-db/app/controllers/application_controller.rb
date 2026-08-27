class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  # Password-protect the whole dashboard. Set DASH_USER / DASH_PASS as env vars
  # (Heroku config vars). Defaults are for local dev only.
  http_basic_authenticate_with(
    name: ENV.fetch("DASH_USER", "curbeffect"),
    password: ENV.fetch("DASH_PASS", "curbeffect")
  )
end
