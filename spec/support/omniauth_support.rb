module OmniauthSupport
  OmniAuth.config.test_mode = true

  PROVIDERS = {
    foursquare: {
      token: '219318941446508|20effc615982726d5147c0c5.1-100002952898027|9ZOE0v7ejJPbB2yRLLN7iI9gxP4',
      uid:   '100002952898027'
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
