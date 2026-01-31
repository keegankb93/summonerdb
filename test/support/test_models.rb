module TestModels

  class InvalidModel < RiotApi::Web::Model
    property :unknown_property, "NonExistentModel"
  end

  class WeirdData < RiotApi::Web::Model
    property :first_name
    property :last_name
    property :weird_data_345, from: "WEIRD_data345"
  end

  class NestedModel < RiotApi::Web::Model
    property :profile, "TestModels::Profile"
  end

  class NestedCollectionModel < RiotApi::Web::Model
    collection :items, "TestModels::Item"
  end

  class Profile < RiotApi::Web::Model
    property :first_name
    property :last_name
    collection :favorite_colors
  end

  class Item < RiotApi::Web::Model
    property :id
    property :value
  end

end