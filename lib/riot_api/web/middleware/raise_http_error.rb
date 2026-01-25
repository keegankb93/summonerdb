# frozen_string_literal: true

# Credit to ardecvz for the original implementation of this middleware https://gist.github.com/ardecvz/7ada5b45fbed5709e6e79c3a9ed15b51
module RiotApi
  module Web
    module Middleware
      # Handle HTTP errors by inspecting the HTTP response code and raising appropriate custom errors.
      #
      # @raise [Errors::ClientError, Errors::ServerError] Raises a coded ClientError or ServerError.
      #
      class RaiseHttpError < Faraday::Middleware
        CLIENT_ERRORS = {
          400 => RiotApi::Web::Http::Errors::InvalidRequestError,
          401 => RiotApi::Web::Http::Errors::UnauthorizedError,
          403 => RiotApi::Web::Http::Errors::ForbiddenError,
          404 => RiotApi::Web::Http::Errors::NotFoundError,
          413 => RiotApi::Web::Http::Errors::PayloadTooLargeError,
          422 => RiotApi::Web::Http::Errors::UnprocessableEntityError,
          429 => RiotApi::Web::Http::Errors::TooManyRequestsError
        }.freeze

        def on_complete(env)
          handle_client_error(env)
          handle_server_error(env)
        end

        private

        def handle_client_error(env)
          return if env.status < 400 || env.status >= 500

          error = CLIENT_ERRORS.fetch(env.status, RiotApi::Web::Http::Errors::ClientError)

          raise error, message(env)
        end

        def handle_server_error(env)
          return if env.status < 500

          raise RiotApi::Web::Http::Errors::ServerError, message(env)
        end

        def message(env)
          "Server returned #{env.status}: #{env.body}. Headers: #{headers(env)}"
        end

        def headers(env)
          env.response_headers.inspect
        end

        Faraday::Middleware.register_middleware(riot_api_raise_http_error: self)
      end
    end
  end
end
