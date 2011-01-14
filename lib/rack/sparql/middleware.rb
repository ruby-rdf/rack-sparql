module Rack::SPARQL
  ##
  # A Rack middleware base class.
  class Middleware
    DEFAULT_CONTENT_TYPE = 'text/plain; charset=UTF-8'
    DEFAULT_HEADERS      = {'Content-Type' => DEFAULT_CONTENT_TYPE}

    # @return [#call]
    attr_reader :app

    # @return [Hash]
    attr_reader :options

    ##
    # @param  [#call] app
    # @param  [Hash] options
    def initialize(app, options = {})
      @app, @options = app, options.dup
    end

    ##
    # @param  [Hash] env
    # @return [Array]
    def call(env)
      @app.call(env)
    end

  protected

    def respond_with(body, headers = {})
      [200, DEFAULT_HEADERS.merge(headers), [body.to_s]]
    end

    def bad_request(message = nil)
      http_error(400, message)
    end

    def forbidden(message = nil)
      http_error(403, message)
    end

    def not_found(message = nil)
      http_error(404, message)
    end

    def not_allowed(message = nil)
      http_error(405, message)
    end

    def not_acceptable(message = nil)
      http_error(406, message)
    end

    def unsupported_media_type(message = nil)
      http_error(415, message)
    end

    def http_error(code, message = nil)
      [code, DEFAULT_HEADERS, [message || [code, Rack::Utils::HTTP_STATUS_CODES[code]].join(' ') << "\n"]]
    end
  end # Middleware
end # Rack::SPARQL
