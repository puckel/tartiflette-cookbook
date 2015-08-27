source 'https://rubygems.org'

group :lint do
  gem 'foodcritic', '~> 3.0'
  gem 'rubocop',    '~> 0.32'
  gem 'rainbow', '< 2.0'
end

group :unit do
  gem 'berkshelf', '~> 3.3.0'
  gem 'chefspec',   '~> 4.2'
  gem 'rspec_junit_formatter'
  gem 'ohai', '~> 7.4' if RUBY_VERSION < '2'
end

group :integration do
  gem 'test-kitchen'
  gem 'kitchen-vagrant'
  gem 'kitchen-docker'
  gem 'kitchen-digitalocean'
  gem 'kitchen-ec2'
end

group :development do
  gem 'guard',            '~> 2.12'
  gem 'guard-rubocop',    '~> 1.2'
  gem 'guard-foodcritic', '~> 1.0'
  gem 'guard-kitchen',    '~> 0.0'
  gem 'guard-rspec',      '~> 4.5'
  gem 'rb-fsevent', require: false
  gem 'rake'
end
