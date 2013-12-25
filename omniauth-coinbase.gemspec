# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/omniauth-coinbase/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-coinbase"
  gem.version       = Omniauth::Coinbase::VERSION
  gem.authors       = ["prudhvi"]
  gem.email         = ["prudhvi.d123@gmail.com"]
  gem.description   = %q{CoinBase strategy for OmniAuth}
  gem.summary       = %q{CoinBase strategy for OmniAuth}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
