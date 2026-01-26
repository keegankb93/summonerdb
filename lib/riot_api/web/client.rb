# frozen_string_literal: true

module RiotApi
  module Web
    class Client
      include ::RiotApi::Web::Http::Connection
      include ::RiotApi::Web::Http::Request

      def initialize(region: :na)
        @region = region
      end

      def region_url
        "https://#{RiotConfig.regions[@region]}.#{RiotConfig.api_url}"
      end

      def fetch(endpoint)
        url = region_url + endpoint.full_path
        url += "?#{endpoint.to_query}" if endpoint.query_values.any?

        response = request(:get, url:)

        endpoint.model.constantize.new(response.body)
      end
    end
  end
end
