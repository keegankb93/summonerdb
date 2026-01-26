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

    end
  end
end
