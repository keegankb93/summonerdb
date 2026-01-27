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
        # @return [RiotApi::League::Matches::Models::Ids]
        def ids_by_puuid(puuid, params = nil)
          get("/lol/match/v5/matches/by-puuid/#{puuid}/ids", RiotApi::League::Matches::Models::Ids, params)
        end

        #
        # Get match details by match id
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        # @param match_id [String] The match ID
        # @return [RiotApi::League::Matches::Models::Match]
        def match(match_id)
          get("/lol/match/v5/matches/#{match_id}", RiotApi::League::Matches::Models::Match)
        end

      end
    end
  end
end
