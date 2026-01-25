module RiotApi
  module League
    module Resources
      class Summoner < Resource
        path 'summoner/v4/summoners'

        #
        # Fetches a summoner by their summoner ID.
        # @!method by_summoner_id(summoner_id)
        # @param summoner_id [String] The summoner ID.
        # @return [nil]
        endpoint :by_summoner_id,
                 ->(summoner_id) { "#{summoner_id}" },
                 returns: nil

      end
    end
  end
end
