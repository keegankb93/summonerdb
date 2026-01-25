module RiotApi
  module League
    class Client < ::RiotApi::Web::Client

      #
      # Summoner resource returns basic information about a summoner such as
      # their puuid, level and profile icon ID.
      # @!method summoner
      # @return [Resources::Summoner]
      resource :summoner, 'Resources::Summoner'

    end
  end
end
