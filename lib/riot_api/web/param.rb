# frozen_string_literal: true

module RiotApi
  module Web
    class Param
      include Modelable

      #
      # Initialize the param object with given attributes
      # @param attrs [Hash{Symbol => Object}] the attributes to set on the param object
      # @return [void]
      def initialize(**attrs)
        attrs.each do |name, value|
          instance_variable_set("@#{name}", value) if self.class.properties.key?(name)
        end
      end

      #
      # Convert the param object to a query string
      def to_query
        self.to_h.to_query
      end

      def to_params
        self.class
            .properties
            .to_h { |param| [param.to_s.camelize(:lower), instance_variable_get("@#{param}")] }
            .compact
      end

    end
  end
end
