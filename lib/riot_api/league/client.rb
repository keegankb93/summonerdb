# frozen_string_literal: true

module RiotApi
  module League
    class Client < ::RiotApi::Web::Client
      # #
      # # Summoner resource returns basic information about a summoner such as
      # # their puuid, level and profile icon ID.
      # # @!method summoner
      # # @return [Resources::Summoner]
      # resource :summoner, "Resources::Summoner"

      #
      # Match resource returns matches and their details.
      # @!method match
      # @return [Resources::Match]
      resource :match, "::RiotApi::League::Resources::Match"
    end
  end
end
