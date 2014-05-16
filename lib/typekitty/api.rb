require 'httparty'

module Typekitty
    class API
        include HTTParty

        attr_accessor :api_token

        base_uri 'typekit.com/api/v1/json'

        def initialize api_token
            @api_token = api_token
        end
    end
end
