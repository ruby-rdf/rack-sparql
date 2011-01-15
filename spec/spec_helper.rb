require 'rack/sparql'
require 'rack/test'
require 'rdf/spec'

RSpec.configure do |config|
  config.include RDF::Spec::Matchers

  config.mock_with :rspec
  config.include Rack::Test::Methods

  def not_found
    mock('404 Not Found app', :call => [404, {}, ["Not Found"]])
  end

  def app
    Rack::SPARQL::Endpoint.new(not_found, Rack::SPARQL::Server.new)
  end
end

include Rack::SPARQL
