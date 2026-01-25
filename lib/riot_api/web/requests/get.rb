# frozen_string_literal: true

module RiotApi
  module Web
    module Requests
      #
      # Contains the required methods to successfully make get requests to the Riot API.
      class Get
        # @return [Hash{Symbol => Object}]
        def path_params
          raise NotImplementedError, "Subclasses must implement the 'path_params' method"
        end

        # @return [Hash{Symbol => Object}]
        def query_params
          raise NotImplementedError, "Subclasses must implement the 'query_params' method"
        end

        #
        # @return [String]
        def to_query
          query_params.transform_keys { _1.to_s.camelize(:lower) }.to_query
        end
      end
    end
  end
end
