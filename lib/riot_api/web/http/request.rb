# frozen_string_literal: true

module RiotApi
  module Web
    module Http
      #
      # Provides methods for sending HTTP requests.
      # @note We only have a request method now, but can get more granular with a method for each
      # HTTP verb in the future if needed.
      module Request
        #
        # Sends an HTTP request using the specified method, URL, and parameters.
        # @param method [Symbol] The HTTP method to use (e.g., :get, :post).
        # @param url [String, nil] The URL to send the request to.
        # @param params [Hash{Symbol => Object}, nil] The parameters to include in the request.
        # @return [Faraday::Response] The response from the HTTP request.
        def request(method, url: nil, params: nil)
          connection.send(method, url) do |req|
            req.params = params if params
          end
        end
      end
    end
  end
end
