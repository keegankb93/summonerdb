# frozen_string_literal: true

module RiotApi
  module Lol
    class Client < ::RiotApi::Web::Client

      #
      # Match resource
      # @return [::RiotApi::Lol::Matches::Resource]
      def match
        @match ||= ::RiotApi::Lol::Matches::Resource.new(self)
      end

    end
  end
end
