# frozen_string_literal: true

source 'https://rubygems.org'

gem 'hanami'
gem 'hanami-model'
gem 'rake'

gem 'pg'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'rubocop', require: false
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'factory_bot'
  gem 'minitest'
end

group :production do
  # gem 'puma'
end
