require 'rack' # @see http://rubygems.org/gems/rack
require 'rdf'  # @see http://rubygems.org/gems/rdf
require 'json' # @see http://rubygems.org/gems/json_pure

module Rack
  module SPARQL
    autoload :Fault,      'rack/sparql/fault'
    autoload :Middleware, 'rack/sparql/middleware'
    autoload :Endpoint,   'rack/sparql/endpoint'
    autoload :Server,     'rack/sparql/server'
    autoload :Proxy,      'rack/sparql/proxy'
    autoload :VERSION,    'rack/sparql/version'
  end
end
