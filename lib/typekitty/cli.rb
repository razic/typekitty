require 'thor'
require 'typekitty/api'

module Typekitty
    class CLI < Thor
        option :token, :required => true

        desc 'kits', 'Lists your kits by their `id`'
        def kits
            puts api.kits
        end

        no_commands do
            def api
                ::Typekitty::API.default_params :token => options[:token]
                ::Typekitty::API
            end
        end
    end
end
