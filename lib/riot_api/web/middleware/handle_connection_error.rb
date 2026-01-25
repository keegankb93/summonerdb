# frozen_string_literal: true

# Credit to ardecvz for the original implementation of this middleware https://gist.github.com/ardecvz/7ada5b45fbed5709e6e79c3a9ed15b51
module RiotApi
  module Web
    module Middleware
      # Handle connection errors in the context of the Faraday underlying HTTP client library.
      #
      # @raise [Errors::ConnectionError] Raises a custom ConnectionError.
      #
      class HandleConnectionError < Faraday::Middleware
        FARADAY_CONNECTION_ERRORS = [
          Faraday::TimeoutError,
          Faraday::ConnectionFailed,
          Faraday::SSLError
        ].freeze

        def call(env)
          @app.call(env)
        rescue *FARADAY_CONNECTION_ERRORS => e
          raise Errors::ConnectionError, e
        end

        Faraday::Middleware.register_middleware(
          riot_api_connection_error: self,
          )
      end
    end
  end
end
