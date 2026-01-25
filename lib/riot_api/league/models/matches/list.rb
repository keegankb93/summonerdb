# frozen_string_literal: true

module RiotApi
  module League
    module Models
      module Matches
        #
        # Represents a list of match IDs associated with a specific account.
        class List < ::RiotApi::Web::Model

          #
          # @!attribute match_ids
          #   @return [Array<String>] A list of match_ids.
          collection :match_ids

        end
      end
    end
  end
end
