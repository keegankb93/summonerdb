# frozen_string_literal: true

module RiotApi
  module League
    class Resource < ::RiotApi::Web::Resource
      self.base_path = "/lol"
    end
  end
end
