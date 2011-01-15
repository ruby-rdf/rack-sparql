module Rack::SPARQL
  ##
  # A pass-through SPARQL proxy implementation.
  #
  # @see http://sparql.rubyforge.org/client/
  class Proxy < Server
    ##
    # @private
    # @see Rack::SPARQL::Server#query
    def query(query, options = {})
      super # TODO
    end
  end # Proxy
end # Rack::SPARQL
