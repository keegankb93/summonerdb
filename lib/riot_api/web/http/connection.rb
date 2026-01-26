# frozen_string_literal: true

require_relative "../middleware/handle_connection_error"
require_relative "../middleware/raise_http_error"
require_relative "../middleware/snake_case_response"

module RiotApi
  module Web
    module Http
      module Connection
        def connection
          @connection ||= Faraday.new do |faraday|
            faraday.use(:riot_api_connection_error)
            faraday.use(:riot_api_raise_http_error)
            faraday.use(:snake_case_response)
            faraday.request :json
            faraday.response :json, parser_options: { symbolize_names: false }
            faraday.adapter Faraday.default_adapter
            faraday.headers["X-Riot-Token"] = RiotConfig.api_key
          end
        end
      end
    end
  end
end
