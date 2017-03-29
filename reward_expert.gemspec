# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reward_expert/version'

Gem::Specification.new do |spec|
  spec.name = 'reward_expert'
  spec.version = RewardExpert::VERSION
  spec.authors = ['Vadim Shaulski']
  spec.email = ['sh.vadim@gmail.com']

  spec.summary = 'This is an API client for RewardExpert services'
  spec.description = 'This is an API client for RewardExpert services'
  spec.homepage = 'https://github.com/RewardExpertINC/reward_expert_client'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'rubocop'
end
