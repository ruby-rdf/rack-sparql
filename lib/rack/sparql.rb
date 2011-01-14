require 'rack' # @see http://rubygems.org/gems/rack
require 'rdf'  # @see http://rubygems.org/gems/rdf
require 'json' # @see http://rubygems.org/gems/json_pure

module Rack
  module SPARQL
    autoload :Middleware, 'rack/sparql/middleware'
    autoload :VERSION,    'rack/sparql/version'
  end
end
