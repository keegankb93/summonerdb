# frozen_string_literal: true

module RiotApi
  module Web
    module Middleware
      #
      # Middleware to convert response keys to snake_case
      class SnakeCaseResponse < Faraday::Middleware
        def on_complete(env)
          env.body = case env.body
                     when Array
                       env.body.map { _1.is_a?(Hash) ? _1.deep_transform_keys(&:underscore) : _1 }
                     when Hash
                       env.body.deep_transform_keys(&:underscore)
                     else
                       env.body
                     end
        end

        Faraday::Middleware.register_middleware(
          snake_case_response: self,
          )
      end
    end
  end
end
