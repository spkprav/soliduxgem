# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soliduxgem/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'soliduxgem'
  s.version     = '0.1.0'
  s.summary     = 'Soliduxgem'
  s.description = 'Soliduxgem'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Praveen Kumar'
  s.email     = 'spkpkrav@gmail.com'
  s.homepage  = ''

  s.files        = `git ls-files`.split("\n")
  s.require_path = ['lib','config']
  s.requirements << 'none'

  s.add_dependency 'solidus', '~> 1.2.2'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
