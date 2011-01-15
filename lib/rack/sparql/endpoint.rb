module Rack::SPARQL
  ##
  # SPARQL 1.0 Protocol endpoint for Rack applications.
  #
  # @see http://www.w3.org/TR/rdf-sparql-protocol/
  # @see http://www.w3.org/TR/sparql11-protocol/
  # @see http://www.w3.org/TR/rdf-sparql-json-res/
  class Endpoint < Middleware
    REQUEST_METHODS    = %w(GET POST)
    INPUT_CONTENT_TYPE = 'application/x-www-form-urlencoded'

    ##
    # @private
    # @see Rack::SPARQL::Middleware#call
    def call(env)
      super # TODO
    end
  end # Endpoint
end # Rack::SPARQL
