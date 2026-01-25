# frozen_string_literal: true

module RiotApi
  module Web
    class Client
      include ::RiotApi::Web::Http::Connection
      include ::RiotApi::Web::Http::Request

      def initialize(region: :na)
        @region = region
      end

      def region_url
        "https://#{RiotConfig.regions[@region]}.#{RiotConfig.api_url}"
      end

      class << self
        #
        # Defines a resource method that initializes and memoizes an instance of the given class.
        # @param name [Symbol] The name of the resource method to define.
        # @param klass [String] The class of the resource to instantiate.
        # @return [void]
        def resource(name, klass)
          define_method(name) do
            ivar = "@#{name}"
            instance_variable_get(ivar) || instance_variable_set(ivar, klass.constantize.new(self))
          end
        end
      end
    end
  end
end
