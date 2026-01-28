# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents metadata of a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Metadata < ::RiotApi::Web::Model

          #
          # @!attribute metadata
          # @return [String]
          property :data_version

          #
          # @!attribute match_id
          # @return [String]
          property :match_id

          #
          # @!attribute participants
          # @return [Array<String>]
          collection :participants

        end
      end
    end
  end
end
