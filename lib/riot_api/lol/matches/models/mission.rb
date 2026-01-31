# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents the missions of a participant in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Mission < ::RiotApi::Web::Model

          #
          # @!attribute [r] player_score_0
          # @return [Integer]
          property :player_score_0

          #
          # @!attribute [r] player_score_1
          # @return [Integer]
          property :player_score_1

          #
          # @!attribute [r] player_score_2
          # @return [Integer]
          property :player_score_2

          #
          # @!attribute [r] player_score_3
          # @return [Integer]
          property :player_score_3

          #
          # @!attribute [r] player_score_4
          # @return [Integer]
          property :player_score_4

          #
          # @!attribute [r] player_score_5
          # @return [Integer]
          property :player_score_5

          #
          # @!attribute [r] player_score_6
          # @return [Integer]
          property :player_score_6

          #
          # @!attribute [r] player_score_7
          # @return [Integer]
          property :player_score_7

          #
          # @!attribute [r] player_score_8
          # @return [Integer]
          property :player_score_8

          #
          # @!attribute [r] player_score_9
          # @return [Integer]
          property :player_score_9

          #
          # @!attribute [r] player_score_10
          # @return [Integer]
          property :player_score_10

          #
          # @!attribute [r] player_score_11
          # @return [Integer]
          property :player_score_11

        end
      end
    end
  end
end
