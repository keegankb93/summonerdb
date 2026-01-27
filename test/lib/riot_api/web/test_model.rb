# frozen_string_literal: true

require "test_helper"

describe ::RiotApi::Web::Model do
  let(:model_class) do
    Class.new(::RiotApi::Web::Model) do
      property :name
      collection :items
    end
  end

  let(:data) { { "name": "Test Model", "items": %w[item1 item2] }.with_indifferent_access }
  let(:model) { model_class.new(data) }

  describe "#initialize" do
    it "sets properties correctly" do
      _(model.name).must_equal("Test Model")
      %w[item1 item2].each { _(model.items).must_include(_1) }
    end
  end
  #
  # describe "#to_h" do
  #   it "returns a hash representation of the model" do
  #     expect(model_instance.to_h).to eq({ name: "Test Model", items: ["item1", "item2"] })
  #   end
  # end
end
