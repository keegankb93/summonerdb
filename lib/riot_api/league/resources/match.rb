# frozen_string_literal: true

module RiotApi
  module League
    module Resources
      class Match < Resource
        self.path = "/match/v5/matches"

        #
        # Fetches an account by their puuid.
        # @!method ids(request)
        # @param request [::RiotApi::League::Requests::Matches::IdsRequest]
        # @return [Models::Matches::List]
        endpoint :ids,
                 "/by-puuid/%{puuid}/ids",
                 returns: "::RiotApi::League::Models::Matches::List"
      end
    end
  end
end
