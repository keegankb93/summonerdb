# frozen_string_literal: true

module RiotApi
  module Web
    module Modelable
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        #
        # Defines a property for the model.
        # @param name [Symbol] the name of the property
        # @param klass [String, nil] the class of the property if it's a nested model
        # @return [void]
        def property(name, klass = nil)
          attr_reader name
          properties[name] = { type: :property, klass: klass }
        end

        #
        # Defines a collection property for the model.
        # @param name [Symbol] the name of the collection property
        # @param klass [String, nil] the class of the items in the collection if they are nested models
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

      #
      # Convert the param object to a hash
      def to_h
        self.class.properties
            .to_h { |param| [param, send(param)] }
            .compact
      end

    end
  end
end
