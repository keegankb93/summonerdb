# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents stats of the objective.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class ObjectiveStat < ::RiotApi::Web::Model
          #
          # @!attribute first
          # @return [Boolean]
          property :first

          #
          # @!attribute kills
          # @return [Integer]
          property :kills

        end
      end
    end
  end
end
