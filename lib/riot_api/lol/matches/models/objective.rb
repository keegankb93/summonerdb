# frozen_string_literal: true

module RiotApi
  module Lol
    module Matches
      module Models
        #
        # Represents the objective data of a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Objective < ::RiotApi::Web::Model
          #
          # @!attribute [r] baron
          # @return [RiotApi::Lol::Matches::Models::ObjectiveStat]
          property :baron, "RiotApi::Lol::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] champion
          # @return [RiotApi::Lol::Matches::Models::ObjectiveStat]
          property :champion, "RiotApi::Lol::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] dragon
          # @return [RiotApi::Lol::Matches::Models::ObjectiveStat]
          property :dragon, "RiotApi::Lol::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] horde
          # @return [RiotApi::Lol::Matches::Models::ObjectiveStat]
          property :horde, "RiotApi::Lol::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] inhibitor
          # @return [RiotApi::Lol::Matches::Models::ObjectiveStat]
          property :inhibitor, "RiotApi::Lol::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] rift_herald
          # @return [RiotApi::Lol::Matches::Models::ObjectiveStat]
          property :rift_herald, "RiotApi::Lol::Matches::Models::ObjectiveStat"

          #
          # @!attribute [r] tower
          # @return [RiotApi::Lol::Matches::Models::ObjectiveStat]
          property :tower, "RiotApi::Lol::Matches::Models::ObjectiveStat"
        end
      end
    end
  end
end
