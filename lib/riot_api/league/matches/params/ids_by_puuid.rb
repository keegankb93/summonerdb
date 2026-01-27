# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Params
        #
        # Query parameters for fetching match IDs by PUUID
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatchIdsByPUUID
        class IdsByPuuid < ::RiotApi::Web::Param

          # @!attribute start_time
          #  @return [Integer] Start of the time range specified as a Unix timestamp in
          property :start_time

          # @!attribute end_time
          # @return [Integer] End of the time range specified as a Unix timestamp in seconds.
          property :end_time

          # @!attribute queue
          # @return [Integer] Match queue.
          property :queue

          # @!attribute type
          # @return [String] Type of match.
          property :type

          # @!attribute start
          # @return [Integer] The index of the first match to return.
          property :start

          # @!attribute count
          # @return [Integer] The number of matches to return.
          property :count
        end
      end
    end
  end
end
