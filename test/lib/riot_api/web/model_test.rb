# frozen_string_literal: true

require "test_helper"
require "support/test_models"

class RiotApi::Web::ModelTest < ActiveSupport::TestCase
  test "property method raises an ArgumentError when the name is not a symbol" do
    invalid_model_class = proc do
      Class.new(::RiotApi::Web::Model) do
        property "invalid_name"
      end
    end

    assert_raises(ArgumentError, &invalid_model_class)
  end

  test "data is saved to its respective property" do
    data = {
      "firstName": "John",
      "lastName": "Smith",
      "WEIRD_data345": [1, 2, 3]
    }.with_indifferent_access

    model = TestModels::WeirdData.new(data)

    assert_respond_to model, :first_name
    assert_respond_to model, :last_name
    assert_respond_to model, :weird_data_345
  end

  test "model assigns incoming data to their corresponding properties" do
    favorite_colors = %w[red green blue]
    data = { "firstName": "John", "lastName": "Smith", "favoriteColors": favorite_colors }.with_indifferent_access
    model = TestModels::Profile.new(data)

    assert_equal model.first_name, "John"
    assert_equal model.last_name, "Smith"
    favorite_colors.each { assert_includes model.favorite_colors, _1 }
  end

  test "property instantiates nested model classes when a model class is specified" do
    favorite_colors = %w[red green blue]
    data = {
      "profile": {
        "firstName": "John",
        "lastName": "Smith",
        "favoriteColors": favorite_colors
      }
    }.with_indifferent_access

    model = TestModels::NestedModel.new(data)

    assert_instance_of TestModels::Profile, model.profile
    assert_equal model.profile.first_name, "John"
    assert_equal model.profile.last_name, "Smith"
    favorite_colors.each { assert_includes model.profile.favorite_colors, _1 }
  end

  test "collection instantiates an array of nested model classes when a model class is specified" do
    items_data = [
      { "id": 1, "value": "Item 1" },
      { "id": 2, "value": "Item 2" }
    ].map(&:with_indifferent_access)

    data = { "items": items_data }.with_indifferent_access

    model = TestModels::NestedCollectionModel.new(data)

    assert_equal model.items.length, 2

    model.items.each_with_index do |item, index|
      assert_instance_of TestModels::Item, item
      assert_equal item.id, items_data[index][:id]
      assert_equal item.value, items_data[index][:value]
    end
  end

  test "raises NoMethodError for undefined properties" do
    data = { "id": 1, "value": "blue" }.with_indifferent_access
    model = TestModels::Item.new(data)

    assert_raises(NoMethodError) do
      model.undefined_property
    end
  end

  test "fetching a property value caches it in an ivar after first access" do
    data = { "id": 1, "value": "blue" }.with_indifferent_access
    model = TestModels::Item.new(data)

    assert_equal model.instance_variable_defined?("@id"), false
    assert_equal model.id, 1
    assert_equal model.instance_variable_defined?("@id"), true
  end

  test "to_h outputs a hash with the defined properties and their values" do
    data = { "id": 1, "value": "blue" }.with_indifferent_access
    model = TestModels::Item.new(data)

    expected_hash = { id: 1, value: "blue" }

    assert_equal expected_hash, model.to_h
  end
end
