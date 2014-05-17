require 'thor'
require 'typekitty/api'

module Typekitty
    class CLI < Thor
        desc 'kits', 'Lists your kits'
        option :token, :required => true
        def kits
            puts api.kits
        end

        desc 'kit KIT_ID', 'Get information about a kit'
        option :token, :required => true
        def kit id
            puts api.kit id
        end

        no_commands do
            def api
                Typekitty::API.default_params :token => options[:token]
                Typekitty::API
            end
        end
    end
end
