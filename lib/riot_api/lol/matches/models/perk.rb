# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents perks selected by a participant in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Perk < ::RiotApi::Web::Model
          #
          # @!attribute [r] stat_perks
          # @return [RiotApi::Lol::Matches::Models::PerkStat]
          property :stat_perks, "RiotApi::Lol::Matches::Models::PerkStat"

          #
          # @!attribute [r] styles
          # @return [Array<RiotApi::Lol::Matches::Models::PerkStyle>]
          collection :styles, "RiotApi::Lol::Matches::Models::PerkStyle"
        end
      end
    end
  end
end
