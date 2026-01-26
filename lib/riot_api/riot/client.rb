# frozen_string_literal: true

module RiotApi
  module Riot
    class Client < ::RiotApi::Web::Client

      #
      # Account resource
      # @return [::RiotApi::Riot::Accounts::Resource]
      def account
        @account ||= ::RiotApi::Riot::Accounts::Resource.new(self)
      end

    end
  end
end
