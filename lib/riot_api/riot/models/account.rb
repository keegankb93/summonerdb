module RiotApi
  module Riot
    module Models
      #
      # Data representation of the account response from Riot API.
      class Account < ::RiotApi::Web::Model

        #
        # @!attribute puuid
        #   @return [String] The puuid of the account.
        property :puuid

        # @!attribute game_name
        #  @return [String] The game name of the account
        property :game_name

        # @!attribute tag_line
        #   @return [String] The tag line of the account
        property :tag_line

      end
    end
  end
end
