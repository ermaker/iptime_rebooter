# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iptime_rebooter/version'

Gem::Specification.new do |spec|
  spec.name          = 'iptime_rebooter'
  spec.version       = IptimeRebooter::VERSION
  spec.authors       = ['Minwoo Lee']
  spec.email         = ['ermaker@gmail.com']

  spec.summary       = 'iptime_rebooter'
  spec.description   = 'iptime_rebooter'
  spec.homepage      = 'https://github.com/ermaker/iptime_rebooter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'poltergeist'
  spec.add_dependency 'phantomjs'
  spec.add_dependency 'capybara'
  spec.add_dependency 'rake'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-bundler'
end
