OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '985052724855901', '0c16d6ce0c60826b500fd7e13b583fe5', scope: "email, read_friendlists, publish_actions"
end