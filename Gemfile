source 'http://rubygems.org'

gem 'rails', '3.2.15'
gem 'pg'
gem 'activerecord-postgis-adapter'

# Only uncomment the debugger if you are using it as it slows things down
# gem 'ruby-debug19', require: 'ruby-debug'

# Front-end gems
gem 'jquery-rails', '2.0.3' # pin due to incompatible jquery-tools vs jquery 1.8. See https://github.com/cyclestreets/toolkit/issues/75
gem 'haml-rails'
gem 'formtastic'
gem 'map_layers'
gem 'rails3-jquery-autocomplete'
gem 'rgeo-geojson'
gem 'will_paginate', '~> 3.0'
gem 'rails_autolink', '= 1.1.0' # pin due to ruby 1.9.3 requirement in 1.1.5 and later. Last known good version
gem 'tweet-button'

# Back-end gems
gem 'devise', '~> 2.1.2' # pin due to failing tests on 3.0.0 - perhaps attr_accessible related. See https://github.com/plataformatec/devise/issues/2515
gem 'devise_invitable'
gem 'declarative_authorization'
gem 'thin'
gem 'state_machine'
gem 'rack-cache', require: 'rack/cache'
gem 'dragonfly'
gem 'redis-store', '~> 1.0.0'
gem 'resque'
gem 'acts_as_indexed'
gem 'thumbs_up', '~> 0.4.6'
gem 'exceptional'
gem 'foreman'
gem 'whenever'
gem 'draper', '0.15.0' # pin due to failing tests: maybe when https://github.com/jcasimir/draper/pull/288 is released.
gem 'email_reply_parser'
gem 'memoist'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-ui-rails'
end

group :development do
  gem 'annotate', '>= 2.5.0', require: false
  gem 'bullet'

  # Following is required for Resque workers in development to load due to
  # declarative_authorization development dependency when Rails engines are eager loaded
  gem 'ruby_parser'
end

group :development, :test do
  # IRB helpers
  gem 'wirble'
  gem 'hirb'

  gem 'rspec-core'
  gem 'rspec-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'ruby-prof'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'capybara', '~> 1.1.2' # pin for now, pending upgrade to 2.0
  gem 'email_spec'
  gem 'database_cleaner'
  gem 'rspec-expectations'
end
