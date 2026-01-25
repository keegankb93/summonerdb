module RiotApi
  module Web
    module Errors

      class ConfigurationError < StandardError; end

      class ConnectionError < StandardError; end

      class HttpError < StandardError; end

      class ClientError < HttpError; end # 4xx
      class ServerError < HttpError; end # 5xx

      class InvalidRequestError < ClientError; end      # 400
      class UnauthorizedError < ClientError; end        # 401
      class ForbiddenError < ClientError; end           # 403
      class NotFoundError < ClientError; end            # 404
      class PayloadTooLargeError < ClientError; end     # 413
      class UnprocessableEntityError < ClientError; end # 422
      class TooManyRequestsError < ClientError; end     # 429
    end

  end
end
