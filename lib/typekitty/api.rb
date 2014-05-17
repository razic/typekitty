require 'httparty'

module Typekitty
    module API
        include HTTParty

        format :json
        base_uri 'https://typekit.com/api/v1/json'
        default_params :token => ENV['TYPEKIT_TOKEN']

        def self.kits
            response = handle_response get '/kits'

            response['kits'].inject([]) do |kits, kit|
                kits << kit['id']
            end
        end

        def self.handle_response response
            case response.code
            when 200 then response
            when 401 then raise UnauthorizedError
            end
        end

        class UnauthorizedError < StandardError; end
    end
end
