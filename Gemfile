source 'http://rubygems.org'

gem 'rails', '3.2.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.0'
  gem 'coffee-rails', '~> 3.2.0'
  gem 'uglifier',     '>= 1.0.3'
end

gem 'jquery-rails'

gem 'mongoid',  '~> 2.2.0'
gem 'bson_ext', '~> 1.2'
gem 'rails3-generators'

gem 'haml'
gem 'haml-rails'
gem 'aws-s3'
gem 'mongoid-paperclip', require: 'mongoid_paperclip'
gem 'dynamic_form'

gem 'omniauth' # It's a sane default these days
gem 'omniauth-facebook'
gem 'omniauth-twitter'

group :production do
  gem 'thin'
end

group :development do
  gem 'heroku'
  gem 'taps'

  # Boom Boom Pow
  gem 'powify'
  gem 'showoff-io'

  gem 'unicorn'
  
  gem 'simplecov',      require: false
  gem 'simplecov-rcov', require: false
  
end

group :test, :development do
  gem 'ruby-debug19', require: 'ruby-debug'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'mongoid-rspec'
  gem 'capistrano'
  gem 'capistrano_colors'
  gem 'timecop'
  gem 'vcr'
  gem 'fakeweb'
  gem 'email_spec' 

  # Pretty printed test output
  gem 'turn', require: false
end

