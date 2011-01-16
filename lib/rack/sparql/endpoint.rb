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

    # @return [Server]
    attr_reader :server
    def server
      @server = @server.call if @server.is_a?(Proc)
      @server
    end

    ##
    # @param  [#call] app
    # @param  [Server] server
    # @param  [Hash] options
    def initialize(app, server, options = {})
      @server = server
      super(app, options)
    end

    ##
    # @private
    # @see Rack::SPARQL::Middleware#call
    def call(env)
      super # TODO
    end
  end # Endpoint
end # Rack::SPARQL
