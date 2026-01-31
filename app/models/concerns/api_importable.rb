# frozen_string_literal: true

module ApiImportable
  extend ActiveSupport::Concern

  class_methods do
    class_attribute :api_map, instance_writer: false, default: nil

    #
    # Imports data from an API response into the model.
    # @param data [Object] API data object
    # @return [Object] Created model instance
    def import_from_api(data)
      attrs = api_map.constantize.mapped_attributes(data)

      create!(attrs)
    end
  end
end
