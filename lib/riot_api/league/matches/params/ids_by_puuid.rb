# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Params
        #
        # Query parameters for fetching match IDs by PUUID
        class IdsByPuuid < ::RiotApi::Web::Param
          query_params :start_time, :end_time, :queue, :type, :start, :count

          #
          # @param start_time [Integer] Start of the time range specified as a Unix timestamp in seconds. Matches returned will have a start time greater than or equal to this value.
          # @param end_time [Integer] End of the time range specified as a Unix timestamp in seconds. Matches returned will have a start time less than or equal to this value.
          # @param queue [Integer] Match queue. Reference the Game Constants documentation for a list of queue IDs.
          # @param type [String] Type of match. Valid values are: "ranked solo", "ranked-flex", "normal", "aram", "tft", etc.
          # @param start [Integer] The index of the first match to return. Defaults to 0 if not specified.
          # @param count [Integer] The number of matches to return. Defaults to 20 if not specified. Maximum is 100.
          # @return [void]
          def initialize(start_time: nil, end_time: nil, queue: nil, type: nil, start: nil, count: nil)
            @start_time = start_time
            @end_time = end_time
            @queue = queue
            @type = type
            @start = start
            @count = count
          end
        end
      end
    end
  end
end
