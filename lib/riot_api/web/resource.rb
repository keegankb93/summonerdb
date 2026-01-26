# frozen_string_literal: true

module RiotApi
  module Web
    class Resource
      attr_reader :client

      delegate :get, to: :client, private: true

      def initialize(client)
        @client = client
      end

    end
  end
end

