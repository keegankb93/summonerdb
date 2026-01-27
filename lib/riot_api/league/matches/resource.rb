# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      class Resource < League::Resource

        #
        # Get a list of match ids by account puuid
        #
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatchIdsByPUUID
        # @param puuid [String] The game name of the account
        # @param params [RiotApi::League::Matches::Params::IdsByPuuid] Additional query parameters
        # @return [RiotApi::League::Models::Matches::List]
        def ids_by_puuid(puuid, params = nil)
          get("/lol/match/v5/matches/by-puuid/#{puuid}/ids", RiotApi::League::Matches::Models::Ids, params)
        end

      end
    end
  end
end
