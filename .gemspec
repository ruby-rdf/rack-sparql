#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'rack-sparql'
  gem.homepage           = 'http://github.com/datagraph'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'SPARQL 1.0 HTTP API for Rack.'
  gem.description        = 'Rack middleware providing a SPARQL 1.0-compatible HTTP endpoint.'
  gem.rubyforge_project  = 'datagraph'

  gem.author             = 'Datagraph'
  gem.email              = 'datagraph@googlegroups.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CREDITS README UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.8.1'
  gem.requirements               = []
  gem.add_runtime_dependency     'json_pure', '>= 1.4.2' # included in Ruby 1.9.2
  gem.add_runtime_dependency     'rdf',       '~> 0.2.3'
  gem.add_runtime_dependency     'rack',      '>= 1.0'
  gem.add_development_dependency 'yard' ,     '>= 0.6.0'
  gem.add_development_dependency 'rspec',     '>= 1.3.0'
  gem.add_development_dependency 'rdf-spec',  '~> 0.2.3'
  gem.add_development_dependency 'rack-test', '>= 0.5.6'
  gem.post_install_message       = nil
end
