# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents a team in a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Team < ::RiotApi::Web::Model

          #
          # @!attribute [r] bans
          # @return [Array<RiotApi::Lol::Matches::Models::Ban>]
          collection :bans, "RiotApi::Lol::Matches::Models::Ban"

          #
          # @!attribute [r] team_id
          # @return [Integer]
          property :team_id

          #
          # @!attribute [r] win
          # @return [Boolean]
          property :win

        end
      end
    end
  end
end
