# frozen_string_literal: true

module RiotApi
  module Web
    class Resource
      # @note We will need to change this if we want to extract this into a gem since this is Rails specific.
      class_attribute :base_path, :path, instance_writer: false
      attr_reader :client

      def initialize(client)
        @client = client
      end

      class << self

        #
        # Defines an endpoint method for the resource.
        # @param name [Symbol] the name of the method
        # @param path_template [String] a lambda that builds the endpoint path
        # @param returns [String] the string class to instantiate with the response
        # @param method [Symbol] the HTTP method to use (default: :get)
        # @return [void]
        def endpoint(name, path_template, returns:, method: :get, query_params: [])
          # @note This only handles Get requests for now because that's all we use currently.
          define_method(name) do |request|
            path = path_template % request.path_params
            url = client.region_url + base_path + self.class.path + path

            url += "?#{request.to_query}" unless request.query_params.empty?

            response = client.request(method, url:)
            returns.constantize.new(response.body)
          end
        end


        # def endpoint(name, path_builder, returns:, method: :get, query_params: [])
        #   define_method(name) do |*args, **kwargs|
        #     url = client.region_url + base_path + path + path_builder.call(*args, **kwargs)
        #
        #     query = kwargs.slice(*query_params)
        #     url += "?#{query.to_query}" if query.any?
        #
        #     response = client.request(method, url:)
        #
        #     returns.constantize.new(response.body)
        #   end
        # end
      end
    end
  end
end
