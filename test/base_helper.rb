require 'rubygems'
require 'bundler'
Bundler.setup
require 'rails'
require 'test/unit'
require 'mocha'

if RUBY_VERSION >= '1.9.3'
  require 'debugger'
end

require 'rails/engine'

module TestApp
  class Application < Rails::Application
    config.eager_load = false
    config.secret_key_base = "secretkey123"
  end
end
