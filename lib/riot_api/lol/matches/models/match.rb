# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents a match and its details.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Match < ::RiotApi::Web::Model

          #
          # @!attribute [r] metadata
          # @return [RiotApi::Lol::Matches::Models::Metadata]
          property :metadata, "RiotApi::Lol::Matches::Models::Metadata"

          #
          # @!attribute [r] info
          # @return [RiotApi::Lol::Matches::Models::Info]
          property :info, "RiotApi::Lol::Matches::Models::Info"

        end
      end
    end
  end
end
