# frozen_string_literal: true

module RiotApi
  module League
    class Client < ::RiotApi::Web::Client

      #
      # Match resource
      # @return [::RiotApi::League::Matches::Resource]
      def match
        @match ||= ::RiotApi::League::Matches::Resource.new(self)
      end

    end
  end
end
