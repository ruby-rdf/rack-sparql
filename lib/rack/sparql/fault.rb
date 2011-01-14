module Rack::SPARQL
  ##
  # Base class for SPARQL fault exceptions.
  #
  # @see http://www.w3.org/TR/rdf-sparql-protocol/#fault-messages
  class Fault < StandardError
    ##
    # Raised when the value of the query string is not a legal sequence of
    # characters in the language defined by the SPARQL grammar.
    #
    # @see http://www.w3.org/TR/rdf-sparql-protocol/#malformed-query-fault
    class MalformedQuery < Fault
      HTTP_STATUS = 400 # Bad Request
    end

    ##
    # Raised when a client submits a request that the SPARQL service refuses
    # to process.
    #
    # Indicates neither whether the server may or may not process a
    # subsequent, identical request or requests, nor does it constrain a
    # conformant SPARQL service from returning other HTTP status codes or
    # HTTP headers as appropriate given the semantics of HTTP.
    #
    # @see http://www.w3.org/TR/rdf-sparql-protocol/#query-req-refused-fault
    class QueryRequestRefused < Fault
      HTTP_STATUS = 500 # Internal Server Error
    end

    ##
    # Returns the HTTP status code for this fault class.
    #
    # @return [Integer]
    def http_status
      self.class.const_get(:HTTP_STATUS)
    end
  end # Fault
end # Rack::SPARQL
