# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'liquid/plugin_version'

Gem::Specification.new do |spec|
  spec.name        = 'liquid-google-analytics'
  spec.version     = Liquid::GoogleAnalytics::VERSION
  spec.summary     = "Generate Google Analytics Script code with simple Liquid Tag"
  spec.description = "Generate Google Analytics Script code with simple Liquid Tag"
  spec.authors     = ["Rohan Sakhale"]
  spec.email       = 'rohansakhale@gmail.com'
  spec.files         = [*Dir["lib/**/*.rb"], "README.md", "LICENSE.md"]
  spec.require_paths = ['lib']
  spec.homepage    = 'https://gitlab.com/SaiAshirwadInformatia/LiquidGoogleAnalytics'
  spec.license     = 'MIT'

   # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem push.'
  end

  spec.add_dependency 'jekyll', '~> 3.3.0'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.9.0'
  spec.add_development_dependency 'simplecov', '~> 0.12.0'
end