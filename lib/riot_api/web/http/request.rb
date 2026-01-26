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
        # Sends a GET request to the specified path and returns an instance of the specified model.
        # @param path [String] The path to send the GET request to.
        # @param model [RiotApi::Web::Model] The model class to instantiate with the response body.
        # @param params [RiotApi::Web::Param] Optional query parameters to include in the request.
        # @return [RiotApi::Web::Model] An instance of the specified model class initialized with the response
        def get(path, model, params = nil)
          url = region_url + path

          response = request(:get, url:, params: params&.to_params)

          model.new(response.body)
        end

        #
        # Sends an HTTP request using the specified method, URL, and parameters.
        # @param method [Symbol] The HTTP method to use (e.g., :get, :post).
        # @param url [String, nil] The URL to send the request to.
        # @param params [Hash, nil] The parameters to include in the request.
        # @return [Faraday::Response] The response from the HTTP request.
        def request(method, url: nil, params: nil)
          connection.send(method, url) do |req|
            req.params = params if params&.any?
          end
        end
      end
    end
  end
end
