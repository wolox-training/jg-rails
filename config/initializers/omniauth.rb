Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Rails.application.credentials.client_id, Rails.application.credentials.client_secret, {}
end
