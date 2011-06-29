Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :google, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end