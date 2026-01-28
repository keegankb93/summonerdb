# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents perks selected by a participant in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Perk < ::RiotApi::Web::Model
          #
          # @!attribute [r] stat_perks
          # @return [RiotApi::League::Matches::Models::PerkStat]
          property :stat_perks, "RiotApi::League::Matches::Models::PerkStat"

          #
          # @!attribute [r] styles
          # @return [Array<RiotApi::League::Matches::Models::PerkStyle>]
          collection :styles, "RiotApi::League::Matches::Models::PerkStyle"
        end
      end
    end
  end
end
