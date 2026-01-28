# frozen_string_literal: true

module RiotApi
  module Web
    #
    # Base model class for Riot API responses.
    class Model
      include Modelable

      def initialize(data)
        @data = data
      end

      #
      # Fetch and process a property based on its configuration.
      # @param name [Symbol] the property name
      # @return [Object] the processed property value
      # @raise [StandardError] if the property is not defined
      def fetch_property(name)
        # Get the property configuration
        # @example property :metadata, "RiotApi::League::Matches::Models::Metadata", from: "metadata"
        config = self.class.properties[name]

        #
        # If for some reason the property is not defined, raise an error as this should not happen.
        raise StandardError("No such property: #{name}") unless config

        #
        # If it's a hash then we access the value by the 'from' key from the config
        # otherwise we assume the data itself is the value.
        value = @data.is_a?(Hash) ? @data[config[:from]] : @data

        #
        # If there's no value or no klass defined, return the raw value.
        return value unless value && config[:klass]

        resolved_class = config[:klass].constantize

        #
        # Process the value based on the property type.
        # property will resolve to the instance specified in the config
        # collection will resolve to an array of instances.
        case config[:type]
        when :property
          resolved_class.new(value)
        when :collection
          value.map { |item| resolved_class.new(item) }
        else
          raise "Unknown property type: #{config[:type]}"
        end
      end

      #
      # Handle dynamic method calls for properties.
      # @param name [Symbol] the method name
      # @param args [Array] the method arguments
      # @return [Object] the property value
      def method_missing(name, *args)
        return super unless self.class.properties.key?(name)

        ivar = "@#{name}"

        # If the instance variable is already set, return it.
        return instance_variable_get(ivar) if instance_variable_defined?(ivar)

        value = fetch_property(name)

        # Cache the value in an instance variable for future access.
        instance_variable_set(ivar, value)

        value
      end

      def respond_to_missing?(name, include_private = false)
        self.class.properties.key?(name.to_sym) || super
      end

    end
  end
end
