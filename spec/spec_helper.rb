# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require_relative '../config/environment'
require 'minitest/autorun'

Dir[Hanami.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

Hanami.boot
