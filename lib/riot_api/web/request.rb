module RiotApi
  module Web
    module Request

      def request(method, url: nil, params: nil)
        connection.send(method, url) do |req|
          req.params = params if params
        end
      end

    end
  end
end
