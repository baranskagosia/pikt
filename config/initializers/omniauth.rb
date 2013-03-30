Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "493335960715400", "7bbda5ef3b979f49f6823240d44ea5f5"
end