# encoding: utf-8
require File.expand_path('../lib/socket-io/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'socket-io-rails'
  s.version     = SocketIO::Rails::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ville Lautanala']
  s.email       = ['lautis@gmail.com']
  s.homepage    = 'https://github.com/lautis/socket-io-rails'
  s.summary     = %q{Gem wrapper to include the Socket.IO library via the asset pipeline.}

  s.add_runtime_dependency 'rails', '>= 3.1.0'
  s.add_development_dependency 'rspec', '~> 2.7'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
