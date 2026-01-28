# frozen_string_literal: true

require "test_helper"

describe ::RiotApi::Web::Model do
  describe "initialization" do
    it "raises ArgumentError when property name is not a symbol" do
      _(proc {
        Class.new(::RiotApi::Web::Model) do
          property "invalid_name"
        end }).must_raise(ArgumentError)
    end

    it "snake_cases properties" do
      Profile = Class.new(::RiotApi::Web::Model) do
        property :first_name
        property :last_name
        property :weird_data_345, from: "WEIRD_data345"
      end

      data = {
        "firstName": "John",
        "lastName": "Smith",
        "WEIRD_data345": [1, 2, 3]
      }.with_indifferent_access

      model = Profile.new(data)

      _(model).must_respond_to(:first_name)
      _(model).must_respond_to(:last_name)
      _(model).must_respond_to(:weird_data_345)
    end

    it "sets the incoming data to their corresponding properties" do
      model_class = Class.new(::RiotApi::Web::Model) do
                      property :name
                      collection :items
                    end

      data = { "name": "Test Model", "items": %w[item1 item2] }.with_indifferent_access
      model = model_class.new(data)

      _(model.name).must_equal("Test Model")
      %w[item1 item2].each { _(model.items).must_include(_1) }
    end

    it "sets the data to its corresponding model class" do
      Profile = Class.new(::RiotApi::Web::Model) do
        property :first_name
        property :last_name
        collection :favorite_colors
      end

      model_class = Class.new(::RiotApi::Web::Model) do
        property :profile, "Profile"
      end

      favorite_colors = %w[red green blue]
      data = {
        "profile": {
          "firstName": "John",
          "lastName": "Smith",
          "favoriteColors": favorite_colors
        }
      }.with_indifferent_access

      model = model_class.new(data)

      _(model.profile).must_be_instance_of(Profile)
      _(model.profile.first_name).must_equal("John")
      _(model.profile.last_name).must_equal("Smith")
      favorite_colors.each { _(model.profile.favorite_colors).must_include(_1) }
    end

    it "sets the data to its corresponding collection of model classes" do
      Item = Class.new(::RiotApi::Web::Model) do
        property :id
        property :value
      end

      model_class = Class.new(::RiotApi::Web::Model) do
        collection :items, "Item"
      end

      items_data = [
        { "id": 1, "value": "Item 1" },
        { "id": 2, "value": "Item 2" }
      ].map(&:with_indifferent_access)

      data = { "items": items_data }.with_indifferent_access

      model = model_class.new(data)

      _(model.items.length).must_equal(2)
      model.items.each_with_index do |item, index|
        _(item).must_be_instance_of(Item)
        _(item.id).must_equal(items_data[index][:id])
        _(item.value).must_equal(items_data[index][:value])
      end
    end
  end

  describe "method_missing" do
    it "raises NoMethodError for undefined properties" do
      model_class = Class.new(::RiotApi::Web::Model) do
                      property :name
                    end

      data = { "name": "Test Model" }.with_indifferent_access
      model = model_class.new(data)

      _(proc { model.undefined_property }).must_raise(NoMethodError)
    end

    it "caches property values after first access" do
      model_class = Class.new(::RiotApi::Web::Model) do
                      property :name
                    end

      data = { "name": "Test Model" }.with_indifferent_access
      model = model_class.new(data)

      _(model.instance_variable_defined?("@name")).must_equal(false)
      _(model.name).must_equal("Test Model")
      _(model.instance_variable_defined?("@name")).must_equal(true)
    end
  end
end
