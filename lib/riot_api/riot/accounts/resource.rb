# frozen_string_literal: true

module RiotApi
  module Riot
    module Accounts
      class Resource < Riot::Resource

        #
        # Get account by game name and tag line
        #
        # @see https://developer.riotgames.com/apis#account-v1/GET_getByRiotId
        # @param game_name [String] The game name of the account
        # @param tag_line [String] The tag line of the account
        # @return [RiotApi::Riot::Accounts::Models::Account]
        def by_riot_id(game_name:, tag_line:)
          get("/riot/account/v1/accounts/by-riot-id/#{game_name}/#{tag_line}", RiotApi::Riot::Accounts::Models::Account)
        end

      end
    end
  end
end
