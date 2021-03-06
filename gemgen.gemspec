# -*- encoding: utf-8 -*-
$:.unshift File.expand_path('../lib', __FILE__)
require 'gemgen/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Martin Chabot"]
  gem.email         = ["chabotm@gmail.com"]
  gem.description   = %q{Gem generator that uses bundler gem generator}
  gem.summary       = %q{Mostly for personal use}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gemgen"
  gem.require_paths = ["lib"]
  gem.version       = Gemgen::VERSION

  gem.add_dependency "thor"
  gem.add_development_dependency 'rake'
  gem.add_development_dependency "bundler", "~> 1.0"
  gem.add_development_dependency 'minitest'
end
