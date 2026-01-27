# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents detailed info for a match.
        class Info < ::RiotApi::Web::Model

          #
          # @!attribute [r] end_of_game_result
          # @return [String]
          property :end_of_game_result

          #
          # @!attribute [r] teams
          # @return [Array<RiotApi::League::Matches::Models::Team>]
          collection :teams, "RiotApi::League::Matches::Models::Team"

        end
      end
    end
  end
end
