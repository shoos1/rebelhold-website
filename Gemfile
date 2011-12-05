source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.0'
  gem 'coffee-rails', '~> 3.1.0'
  gem 'uglifier'
end

gem 'jquery-rails'

gem 'mongoid',  '~> 2.0.0'
gem 'bson_ext', '~> 1.2'
gem 'rails3-generators'

gem 'haml'
gem 'haml-rails'
gem 'aws-s3'
gem 'mongoid-paperclip', :require => 'mongoid_paperclip'
gem 'dynamic_form'

gem 'omniauth' # It's a sane default these days

gem 'tinymce-rails' #WYSIWYG

gem 'pry' # For a better irb

group :production do
  gem 'thin'
end

group :development do
  gem 'heroku'
  gem 'taps'

  # Boom Boom Pow
  gem 'powify'
  gem 'showoff-io'
end

group :test, :development do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'capybara', :git => 'git://github.com/jnicklas/capybara.git'
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
  gem 'turn', :require => false
end

