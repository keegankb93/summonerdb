# frozen_string_literal: true

module RiotApi
  module League
    module Endpoints
      module Matches
        class Ids < ::RiotApi::League::Endpoint
          self.path = "/match/v5/matches/by-puuid/%{puuid}/ids"
          self.model = "::RiotApi::League::Models::Matches::List"

          # @!method path_params(puuid:)
          # @param puuid [String] The PUUID of the summoner/account.
          path_params :puuid

          # @!method query_params(start:, count:, start_time:, end_time:, queue:, type:)
          # @param start [Integer] Optional. The starting index for fetching match IDs. Default is 0.
          # @param count [Integer] Optional. The number of match IDs to fetch. Default is 20, maximum is 100.
          # @param start_time [Integer] Optional. The start of the time range (in epoch seconds) to fetch match IDs.
          # @param end_time [Integer] Optional. The end of the time range (in epoch seconds) to fetch match IDs.
          # @param queue [Integer] Optional. The queue ID to filter match IDs.
          # @param type [String] Optional. The type of matches to filter match IDs.
          query_params :start, :count, :start_time, :end_time, :queue, :type

        end
      end
    end
  end
end
