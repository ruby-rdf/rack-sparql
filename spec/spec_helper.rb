require 'rack/sparql'
require 'rack/test'
require 'rdf/spec'

RSpec.configure do |config|
  config.include(RDF::Spec::Matchers)
end

include Rack::SPARQL
