# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # The selected perk styles by a participant in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class PerkStyleSelection < ::RiotApi::Web::Model

          #
          # @!attribute [r] perk
          # @return [Integer]
          property :perk

          #
          # @!attribute [r] var1
          # @return [Integer]
          property :var1

          #
          # @!attribute [r] var2
          # @return [Integer]
          property :var2

          #
          # @!attribute [r] var3
          # @return [Integer]
          property :var3

        end
      end
    end
  end
end
