OmniAuth.config.test_mode = true

PROVIDERS = {
  foursquare: {token: '<mocked_token_from_vcr>', uid: '<mocked_uid_from_vcr>'}
}

def mock_provider_oauths
  PROVIDERS.each do |(provider, credentials)|
    OmniAuth.config.add_mock(provider.to_sym, {
      "credentials" => {"token" => credentials[:token]},
      "provider"=> provider,
      'uid' => credentials[:uid]
    })
  end
end

def mocked_uid_for provider
  PROVIDERS[provider.to_sym][:uid]
end

def mocked_token_for provider
  PROVIDERS[provider.to_sym][:token]
end