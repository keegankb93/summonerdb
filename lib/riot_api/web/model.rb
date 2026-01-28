# frozen_string_literal: true

module RiotApi
  module Web
    #
    # Base model class for Riot API responses.
    class Model
      include Modelable

      def initialize(data)
        #
        # This loops through each defined attribute on the model and looks up the attribute
        # in the incoming hash of data or an array. If the attribute has a model class defined, it will instantiate
        # that model with the value from the data recursively. Otherwise it will set the value directly on
        # the attribute.
        #
        # We should watch this for potential performance issues. Some endpoints from RiotAPI can
        # return very large payloads with deeply nested structures. Once the root model is instantiated,
        # it will recursively instantiate all nested models. The models are fairly lightweight, but
        # if performance becomes a concern we can refactor nested models to be built on-demand when
        # accessed rather than at initialization time.
        self.class.properties.each do |name, config|
          result = case config[:type]
                   when :property
                     build_property(name, config[:klass], data)
                   when :collection
                     build_collection(name, config[:klass], data)
                   else
                     raise("Unknown property type: #{config[:type]}")
                   end

          instance_variable_set("@#{name}", result)
        end
      end

      private

      #
      # Resolves a class from a string.
      # @param klass [String, nil] the class name to resolve
      # @return [Class, nil] the resolved class or nil if klass is nil
      def resolve_class(klass)
        klass&.constantize
      end

      #
      # Builds a collection by setting its value to an array of corresponding values from the data hash.
      # If it's a nested model, it will instantiate each item in the collection as that model. Alternatively,
      # if no class is provided, it will set the collection directly to the array from the data as it assumes
      # they are primitive types.
      # @param name [Symbol] the name of the collection property
      # @param klass [String, nil] the class of the items in the collection if they are nested models
      # @param data [Hash, Array] the incoming data to extract the property from
      # @return [void]
      def build_collection(name, klass, data)
        key = self.class.properties[name][:from]
        # If data is an array, we assume it's the collection itself.
        # Otherwise, we look for the collection in the hash by the property name.
        value = data.is_a?(Array) ? data : data[key]

        return if value.blank?

        resolved_class = resolve_class(klass)

        result = if resolved_class
                   value.map { |item| resolved_class.new(item) }
                 else
                   value
                 end

        instance_variable_set("@#{name}", result)
      end

      #
      # Builds a property by setting its value to the corresponding value from the data hash.
      # @param name [Symbol] the name of the property
      # @param klass [String, nil] the class of the property if it's a nested model
      # @param data [Hash] the incoming data to extract the property from
      # @return [void]
      # @raise [ArgumentError] if data is not a Hash
      def build_property(name, klass, data)
        key = self.class.properties[name][:from]
        value = data[key]

        return if value.blank?

        resolved_class = resolve_class(klass)

        value = resolved_class.new(value) if resolved_class

        instance_variable_set("@#{name}", value)
      end
    end
  end
end
