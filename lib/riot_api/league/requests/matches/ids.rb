# frozen_string_literal: true

module RiotApi
  module League
    module Requests
      module Matches
        class Ids < ::RiotApi::Web::Requests::Get
          attr_reader :puuid, :start_time, :end_time, :queue, :type, :start, :count

          # @param puuid [String]
          # @param start_time [Integer, nil]
          # @param end_time [Integer, nil]
          # @param queue [Integer, nil]
          # @param type [String, nil]
          # @param start [Integer, nil]
          # @param count [Integer, nil]
          def initialize(puuid:, start_time: nil, end_time: nil, queue: nil, type: nil, start: nil, count: nil)
            @puuid = puuid
            @start_time = start_time
            @end_time = end_time
            @queue = queue
            @type = type
            @start = start
            @count = count
          end

          #
          # @return [Hash{Symbol => Object}]
          def path_params
            { puuid: }
          end

          #
          # @return [Hash{Symbol => Unknown}]
          def query_params
            { start_time:, end_time:, queue:, type:, start:, count: }.compact
          end

          #
          # @return [String]
          def to_query
            query_params.transform_keys { _1.to_s.camelize(:lower) }.to_query
          end
        end

      end
    end
  end
end

