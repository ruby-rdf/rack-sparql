#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

GEMSPEC = Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'rack-sparql'
  gem.homepage           = 'http://github.com/datagraph'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'SPARQL HTTP API for Rack.'
  gem.description        = 'Rack middleware providing a SPARQL 1.0-compatible HTTP endpoint.'
  gem.rubyforge_project  = 'datagraph'

  gem.authors            = ['Arto Bendiken']
  gem.email              = 'arto.bendiken@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS README UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.8.2'
  gem.requirements               = []
  gem.add_development_dependency 'rdf-spec',  '>= 0.1.0'
  gem.add_development_dependency 'rspec',     '>= 1.3.0'
  gem.add_development_dependency 'yard' ,     '>= 0.5.3'
  gem.add_runtime_dependency     'rack',      '>= 1.0.0'
  gem.add_runtime_dependency     'rdf',       '>= 0.1.1'
  gem.add_runtime_dependency     'json_pure', '>= 1.2.3'
  gem.post_install_message       = nil
end
