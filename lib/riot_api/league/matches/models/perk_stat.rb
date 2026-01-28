# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Perk stat types selected by a participant in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class PerkStat < ::RiotApi::Web::Model
          #
          # @!attribute [r] defense
          # @return [Integer]
          property :defense

          #
          # @!attribute [r] flex
          # @return [Integer]
          property :flex

          #
          # @!attribute [r] offense
          # @return [Integer]
          property :offense

        end
      end
    end
  end
end
