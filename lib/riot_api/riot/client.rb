module RiotApi
  module Riot
    class Client < Web::Client

      #
      # Account resource returns basic information about a Riot account such as
      # their puuid, game name and tag line.
      # @!method account
      # @return [Resources::Account]
      resource :account, '::RiotApi::Riot::Resources::Account'

    end
  end
end
