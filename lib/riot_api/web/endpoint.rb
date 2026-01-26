# frozen_string_literal: true

module RiotApi
  module Web
    class Endpoint
      class_attribute :path, :base_path, :model, instance_writer: false

      attr_accessor :path_values, :query_values

      def initialize
        @path_values = {}
        @query_values = {}
      end

      #
      # Returns the resolved path with path parameters filled in.
      # @return [String] The resolved path.
      def resolved_path
        path % path_values
      end

      #
      # Returns the full path including the base path and resolved path.
      # @return [String] The full path.
      def full_path
        base_path + resolved_path
      end

      #
      # Converts the query parameters to a query string for the request.
      # @return [String] The URL-encoded query string.
      def to_query
        query_values.transform_keys { _1.to_s.camelize(:lower) }.to_query
      end

      class << self

        #
        # Defines the path parameters for the endpoint.
        # @param params [Array<Symbol>] The list of path parameter names.
        # @return [void]
        def path_params(*params)
          define_method(:path_params) do |**kwargs|
            self.path_values = kwargs.slice(*params)
            self
          end
        end

        #
        # Defines the query parameters for the endpoint.
        # @param params [Array<Symbol>] The list of query parameter names.
        # @return [void]
        def query_params(*params)
          define_method(:query_params) do |**kwargs|
            self.query_values = kwargs.slice(*params).compact
            self
          end
        end
      end
    end
  end
end
