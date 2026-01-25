module RiotApi
  module Web
    class Resource
      attr_reader :client

      def initialize(client)
        @client = client
      end

      class << self

        #
        # Sets the base path for the resource.
        # @param value [String] the base path for the resource
        # @return [void]
        def base_path(value)
          @base_path = value
        end

        #
        # Defines an endpoint method for the resource.
        # @param name [Symbol] the name of the method
        # @param path_builder [Proc] a lambda that builds the endpoint path
        # @param returns [String] the string class to instantiate with the response
        # @param method [Symbol] the HTTP method to use (default: :get)
        # @return [void]
        def endpoint(name, path_builder, returns:, method: :get)
          base_path = superclass.instance_variable_get(:@base_path)

          # TODO: Custom error here maybe.
          raise "Base path not defined for resource" unless base_path

          define_method(name) do |*args, **kwargs|
            url = client.region_url + base_path + path_builder.call(*args, **kwargs)
            response = client.request(method, url:)

            # TODO: Handle errors/response before passing body to return model.

            returns.constantize.new(response.body)
          end
        end
      end
    end
  end
end
