module RiotApi
  module Riot
    module Resources
      class Account < Resource

        #
        # Fetches an account by their game name and tag line.
        # @!method by_riot_id(game_name, tag_line)
        # @param game_name [String] The game name of the account.
        # @param tag_line [String] The tag line of the account.
        # @return [nil]
        # @note The tag line does not require the '#' character when passed as a parameter.
        endpoint :by_riot_id,
                 ->(game_name, tag_line) { "/accounts/by-riot-id/#{game_name}/#{tag_line}" },
                 returns: '::RiotApi::Riot::Models::Account'
      end
    end
  end
end


