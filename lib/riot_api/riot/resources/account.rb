# frozen_string_literal: true

module RiotApi
  module Riot
    module Resources
      class Account < Resource
        self.path = "/account/v1"

        #
        # Fetches an account by their game name and tag line.
        # @!method by_riot_id(request)
        # @return [::RiotApi::Riot::Models::Accounts::Account]
        # @note The tag line does not require the '#' character when passed as a parameter.
        endpoint :by_riot_id,
                 "/accounts/by-riot-id/%{game_name}/%{tag_line}",
                 returns: "::RiotApi::Riot::Models::Accounts::Account"

        # #
        # # Fetches an account by their puuid.
        # # @!method by_puuid(puuid)
        # # @param puuid [String] The game name of the account.
        # # @return [nil]
        # endpoint :by_puuid,
        #          ->(puuid) { "/accounts/by-puuid/#{puuid}" },
        #          returns: "::RiotApi::Riot::Models::Account"
      end
    end
  end
end
