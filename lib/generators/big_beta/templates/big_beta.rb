BigBeta.setup do |config|
  # This is the url that's used in invitation emails. Set this to your own site.
  config.invite_to_url = "http://example.com/login"

  # Thank you emails come from this address
  config.from_email_address = "do-not-reply@example.com"

  if Rails.env.production?

    # Configs for production mode go here

  elsif Rails.env.development?

    # Configs for development mode go here

  end

end

