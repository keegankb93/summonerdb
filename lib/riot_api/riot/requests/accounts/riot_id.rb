# frozen_string_literal: true

module RiotApi
  module Riot
    module Requests
      module Accounts
        #
        # Request to fetch a Riot ID by game name and tag line.
        class RiotId < ::RiotApi::Web::Requests::Get
          attr_reader :game_name, :tag_line

          # @param game_name [String]
          # @param tag_line [String]
          def initialize(game_name:, tag_line:)
            @game_name = game_name
            @tag_line = tag_line
          end

          #
          # @return [Hash{Symbol => Object}]
          def path_params
            { game_name:, tag_line: }
          end

          #
          # @return [Hash{Symbol => Unknown}]
          def query_params
            {}
          end
        end

      end
    end
  end
end

