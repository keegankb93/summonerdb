module RiotApi
  module Web
    class Model
      class << self

        #
        # Define an attribute for the model
        # @param name [Symbol] the name of the attribute
        # @param klass [Class, nil] the class of the attribute (for nested models)
        # @return [void]
        def property(name, klass = nil)
          attr_reader name
          properties[name] = klass
        end

        #
        # Get the attributes defined for the model
        # @return [Hash{Symbol => Class, nil}] the attributes of the model
        def properties
          @properties ||= {}
        end
      end

      def initialize(data)
        #
        # This loops through each defined attribute on the model and looks up the attribute
        # in the incoming hash of data. If the attribute has a model class defined, it will instantiate
        # that model with the value from the data recursively. Otherwise it will set the value directly on
        # the attribute.
        self.class.properties.each do |property_name, model|
          value = data[property_name.to_s.camelize(:lower)]

          next unless value

          value = if model
            value.is_a?(Array) ? value.map { model.new(_1) } : model.new(value)
          else
            value
          end

          instance_variable_set("@#{property_name}", value)
        end
      end
    end
  end
end
