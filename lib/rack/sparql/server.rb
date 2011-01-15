module Rack::SPARQL
  ##
  # Base class for SPARQL server implementations.
  #
  # @abstract
  class Server
    ##
    # @param  [String, #to_s] query
    # @param  [Hash] options
    # @option options [String, #to_s] :query_format      ("application/sparql-query")
    # @option options [String, #to_s] :default_graph_uri (nil)
    # @option options [String, #to_s] :named_graph_uri   (nil)
    # @return [Object] the query result
    # @abstract
    # @see    http://www.w3.org/TR/sparql11-protocol/#query-operation
    def query(query, options = {})
      raise NotImplementedError, "#{self.class}#query"
    end
  end # Server
end # Rack::SPARQL
