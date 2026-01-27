# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents a list of match IDs associated with a specific account.
        class Ids < ::RiotApi::Web::Model

          #
          # @!attribute match_ids
          #   @return [Array<String>] A list of match_ids.
          collection :match_ids

        end
      end
    end
  end
end
