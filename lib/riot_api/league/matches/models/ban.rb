# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents a banned champion in a match.
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
