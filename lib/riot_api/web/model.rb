# frozen_string_literal: true

module RiotApi
  module Web
    #
    # Base model class for Riot API responses.
    class Model
      class << self
        #
        # Defines a property for the model.
        # @param name [Symbol] the name of the property
        # @param klass [Class, nil] the class of the property if it's a nested model
        # @return [void]
        def property(name, klass = nil)
          attr_reader name
          properties[name] = { type: :property, klass: klass }
        end

        #
        # Defines a collection property for the model.
        # @param name [Symbol] the name of the collection property
        # @param klass [Class, nil] the class of the items in the collection if they are nested models
        # @return [void]
        def collection(name, klass = nil)
          attr_reader name
          properties[name] = { type: :collection, klass: klass }
        end

        #
        # Holds the properties defined for the model.
        # @return [Hash{Symbol => Hash}] the properties of the model
        # @note Subclasses will share their parent's properties and not have a copy of their own unless we define an inherited method for this use case.
        def properties
          @properties ||= {}
        end
      end

      def initialize(data)
        generate_model(data)
      end

      #
      # Generates the model from the incoming data.
      # @param data [Hash, Array] the incoming data to generate the model from
      # @return [void]
      def generate_model(data)
        #
        # This loops through each defined attribute on the model and looks up the attribute
        # in the incoming hash of data or an array. If the attribute has a model class defined, it will instantiate
        # that model with the value from the data recursively. Otherwise it will set the value directly on
        # the attribute.
        self.class.properties.each do |property_name, config|
          case config[:type]
          when :collection
            handle_collection(property_name, config[:klass], data)
          when :property
            handle_property(property_name, config[:klass], data)
          else
            raise("Unknown property type: #{config[:type]}")
          end
        end
      end

      private

      #
      # Handles a collection property.
      # Checks to see if the incoming data
      # @param name [Symbol] the name of the collection property
      # @param klass [Class, nil] the class of the items in the collection if they are nested models
      # @param data [Hash, Array] the incoming data to extract the property from
      # @return [void]
      def handle_collection(name, klass, data)
        return [] if data.blank?

        values = if klass
                   data.map { klass.new(_1) }
                 else
                   data
                 end

        instance_variable_set("@#{name}", values)
      end

      #
      # Handles an individual property
      # @param name [Symbol] the name of the property
      # @param klass [Class, nil] the class of the property if it's a nested model
      # @param data [Hash] the incoming data to extract the property from
      # @return [void]
      # @raise [ArgumentError] if data is not a Hash
      def handle_property(name, klass, data)
        raise(ArgumentError, "data must be a Hash") unless data.is_a?(Hash)

        value = data[name.to_s]

        return unless value

        value = klass.new(value) if klass

        instance_variable_set("@#{name}", value)
      end
    end
  end
end
