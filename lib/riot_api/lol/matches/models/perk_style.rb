# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # The perk styles selected by a participant in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class PerkStyle < ::RiotApi::Web::Model

          #
          # @!attribute [r] description
          # @return [String]
          property :description

          #
          # @!attribute [r] selections
          # @return [Array<RiotApi::Lol::Matches::Models::PerkStyleSelection>]
          collection :selections, "RiotApi::Lol::Matches::Models::PerkStyleSelection"

          #
          # @!attribute [r] style
          # @return [Integer]
          property :style

        end
      end
    end
  end
end
