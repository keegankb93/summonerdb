# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents detailed info for a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Info < ::RiotApi::Web::Model

          #
          # @!attribute [r] end_of_game_result
          # @return [String]
          property :end_of_game_result

          #
          # @!attribute [r] game_creation
          # @return [Integer]
          property :game_creation

          #
          # @!attribute [r] game_duration
          # @return [Integer]
          property :game_duration

          #
          # @!attribute [r] game_end_timestamp
          # @return [Integer]
          property :game_end_timestamp

          #
          # @!attribute [r] game_id
          # @return [Integer]
          property :game_id

          #
          # @!attribute [r] game_mode
          # @return [String]
          property :game_mode

          #
          # @!attribute [r] game_name
          # @return [String]
          property :game_name

          #
          # @!attribute [r] game_start_timestamp
          # @return [Integer]
          property :game_start_timestamp

          #
          # @!attribute [r] game_type
          # @return [String]
          property :game_type

          #
          # @!attribute [r] game_version
          # @return [String]
          property :game_version

          #
          # @!attribute [r] map_id
          # @return [Integer]
          property :map_id

          #
          # @!attribute [r] participants
          # @return [Array<RiotApi::Lol::Matches::Models::Participant>]
          collection :participants, "RiotApi::Lol::Matches::Models::Participant"

          #
          # @!attribute [r] teams
          # @return [Array<RiotApi::Lol::Matches::Models::Team>]
          collection :teams, "RiotApi::Lol::Matches::Models::Team"

        end
      end
    end
  end
end
