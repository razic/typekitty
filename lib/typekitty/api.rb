require 'httparty'

module Typekitty
    class API
        include HTTParty

        attr_accessor :api_token

        base_uri 'https://typekit.com/api/v1/json'
        format :json

        def initialize api_token
            self.class.default_params :token => api_token
        end
    end
end
