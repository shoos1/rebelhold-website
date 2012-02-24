provider_keys = YAML.load_file(File.join(Rails.root, 'config', 'provider_keys.yml'))

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :facebook,
    provider_keys[Rails.env]['facebook']['consumer_key'],
    provider_keys[Rails.env]['facebook']['consumer_secret'],
    display: 'popup',
    scope: 'offline_access'
  )

  provider(
    :twitter,
    provider_keys[Rails.env]['twitter']['consumer_key'],
    provider_keys[Rails.env]['twitter']['consumer_secret']
  )

  provider(
    :google_oauth2,
    provider_keys[Rails.env]['google']['consumer_key'],
    provider_keys[Rails.env]['google']['consumer_secret']
  )

  provider :identity, model: User,
    on_failed_registration: lambda { |env| UsersController.action(:new).call(env) }
end
