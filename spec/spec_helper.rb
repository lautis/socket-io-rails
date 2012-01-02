# encoding: UTF-8
require 'rails'
require 'rails/all'
require 'socket-io-rails'
require 'rspec'

ENV['RAILS_ENV'] ||= 'test'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
end

module SocketIO
  class Application < ::Rails::Application
    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
  end
end

SocketIO::Application.initialize!
