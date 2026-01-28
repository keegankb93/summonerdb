# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents the objective data of a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Objective < ::RiotApi::Web::Model
          #
          # @!attribute [r] baron
          # @return [RiotApi::League::Matches::Models::ObjectiveStat]
          property :baron, "RiotApi::League::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] champion
          # @return [RiotApi::League::Matches::Models::ObjectiveStat]
          property :champion, "RiotApi::League::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] dragon
          # @return [RiotApi::League::Matches::Models::ObjectiveStat]
          property :dragon, "RiotApi::League::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] horde
          # @return [RiotApi::League::Matches::Models::ObjectiveStat]
          property :horde, "RiotApi::League::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] inhibitor
          # @return [RiotApi::League::Matches::Models::ObjectiveStat]
          property :inhibitor, "RiotApi::League::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] rift_herald
          # @return [RiotApi::League::Matches::Models::ObjectiveStat]
          property :rift_herald, "RiotApi::League::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] tower
          # @return [RiotApi::League::Matches::Models::ObjectiveStat]
          property :tower, "RiotApi::League::Matches::Models::ObjectiveStat"
        end
      end
    end
  end
end
