require 'httparty'

module Typekitty
    module API
        include ::HTTParty

        format :json
        base_uri 'https://typekit.com/api/v1/json'
        default_params :token => ENV['TYPEKIT_TOKEN']

        # Lists kits by their `id`
        def self.kits
            [*get('/kits')['kits']].map { |kits| kits['id'] }
        end
    end
end
