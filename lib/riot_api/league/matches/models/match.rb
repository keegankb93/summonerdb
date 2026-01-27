# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents a match and its details.
        class Match < ::RiotApi::Web::Model

          #
          # @!attribute [r] metadata
          # @return [RiotApi::League::Matches::Models::Metadata]
          property :metadata, "RiotApi::League::Matches::Models::Metadata"

          #
          # @!attribute [r] info
          # @return [RiotApi::League::Matches::Models::Info]
          property :info, "RiotApi::League::Matches::Models::Info"

        end
      end
    end
  end
end
