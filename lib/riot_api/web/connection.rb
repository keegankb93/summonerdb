module RiotApi
  module Web
    module Connection

      def connection
        @connection ||= Faraday.new do |faraday|
          faraday.request :json
          faraday.response :json, parser_options: { symbolize_names: false }
          faraday.adapter Faraday.default_adapter
          faraday.headers['X-Riot-Token'] = RiotConfig.api_key
        end
      end

    end
  end
end
