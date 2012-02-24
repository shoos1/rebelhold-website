module OmniauthSupport
  OmniAuth.config.test_mode = true

  PROVIDERS = {
    facebook: {
      token: '219318941446508|20effc615982726d5147c0c5.1-100002952898027|9ZOE0v7ejJPbB2yRLLN7iI9gxP4',
      uid:   '100002952898027'
    },
    twitter: {
      token: '207138975-fANDtQGW8B5U4VAQhQHrp1bViL4np17HRfeYDYs',
      uid:   '207138975'
    },
    google_oauth2: {
      token: '4/fhPYIRPiUYi8X_vlp5Xdm6MTWQz_',
      uid:   '110125115856743469268'
    }
  }
  
  PROVIDERS.each do |provider, credentials|
    OmniAuth.config.add_mock(provider.to_sym, {
      'provider' => provider,
      'credentials' => {
        'token' => credentials[:token]
      },
      'uid' => credentials[:uid]
    })
  end

  def login_facebook
    visit root_path
    click_link 'Facebook'
    return User.first
  end
end
