# frozen_string_literal: true

module RiotApi
  module Riot
    module Endpoints
      module Accounts
        class ByRiotId < ::RiotApi::Riot::Endpoint
          self.path = "/accounts/by-riot-id/%{game_name}/%{tag_line}"
          self.model = "::RiotApi::Riot::Models::Accounts::Account"

          # @!method path_params(game_name:, tag_line:)
          # @param game_name [String] The game name of the account.
          # @param tag_line [String] The tag line of the account.
          path_params :game_name, :tag_line
        end
      end
    end
  end
end
