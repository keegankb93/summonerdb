# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents a banned champion in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Ban < ::RiotApi::Web::Model

          #
          # @!attribute [r] championId
          # @return [Integer]
          property :champion_id

          #
          # @!attribute [r] pick_turn
          # @return [Integer]
          property :pick_turn

        end
      end
    end
  end
end
