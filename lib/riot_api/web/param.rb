# frozen_string_literal: true

module RiotApi
  module Web
    class Param
      class << self
        # @note We do this so that we can grep these params later and not interfere with instance vars or attr_readers
        # Register query parameters for the param object
        # @param params [Array<Symbol>] list of parameter names
        # @return [void]
        def query_params(*params)
          @query_params = params
          attr_reader(*params)
        end

        #
        # Get registered query parameters
        def registered_query_params
          @query_params ||= []
        end
      end

      #
      # Convert the param object to a query string
      def to_query
        self.to_h.to_query
      end

      #
      # Convert the param object to a hash
      def to_h
        self.class
            .registered_query_params
            .to_h { |param| [param, send(param)] }
            .compact
      end

      def to_params
        self.class
            .registered_query_params
            .to_h { |param| [param.to_s.camelize(:lower), send(param)] }
            .compact
      end

    end
  end
end
