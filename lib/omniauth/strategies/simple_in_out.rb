require "omniauth-oauth2"

module Omniauth
  module Strategies
    class SimpleInOut < OmniAuth::Strategies::OAuth2
      # set the name of the site
      option :name, "simple_in_out"

      # where the hell are we going?
      option :client_options, { site: "https://www.simpleinout.com/api/v2" }
    end
  end
end
