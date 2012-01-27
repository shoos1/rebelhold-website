module OmniauthSupport
  OmniAuth.config.test_mode = true
  provider_keys = YAML.load_file(File.join(Rails.root, 'config', 'provider_keys.yaml'))[:test]

  PROVIDERS = {
    facebook: {
      token: provider_keys[:facebook][:token],
      uid:   provider_keys[:facebook][:uid]
    }
  }
  
  PROVIDERS.each do |(provider, credentials)|
    OmniAuth.config.add_mock(provider, {
      'provider' => provider.to_s,
      'credentials' => {
        'token' => credentials[:token]
      },
      'uid' => credentials[:uid]
    })
  end
end
