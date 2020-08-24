# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/openid_connect/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-openid-connect'
  spec.version       = OmniAuth::OpenIDConnect::VERSION
  spec.authors       = ['John Bohn', 'Ilya Shcherbinin', 'Bryan Rehbein']
  spec.email         = ['jjbohn@gmail.com', 'm0n9oose@gmail.com', 'bryan.rehbein@venuenext.com']
  spec.summary       = 'OpenID Connect Strategy for OmniAuth'
  spec.description   = 'OpenID Connect Strategy for OmniAuth.'
  spec.homepage      = 'https://github.com/m0n9oose/omniauth_openid_connect'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    if ENV["TRAVIS"] == 'true'
      spec.metadata['allowed_push_host'] = "https://venuenext.jfrog.io/venuenext/api/gems/vn-gems-release"
    else
      spec.metadata['allowed_push_host'] = "https://rubygems.pkg.github.com/venuenext"
    end
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'addressable', '~> 2.5'
  spec.add_dependency 'omniauth', '~> 1.9'
  spec.add_dependency 'openid_connect', '~> 1.1'
  spec.add_development_dependency 'coveralls', '~> 0.8'
  spec.add_development_dependency 'faker', '~> 1.6'
  spec.add_development_dependency 'guard', '~> 2.14'
  spec.add_development_dependency 'guard-bundler', '~> 2.2'
  spec.add_development_dependency 'guard-minitest', '~> 2.4'
  spec.add_development_dependency 'minitest', '~> 5.1'
  spec.add_development_dependency 'mocha', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rubocop', '~> 0.63'
  spec.add_development_dependency 'simplecov', '~> 0.12'
end
