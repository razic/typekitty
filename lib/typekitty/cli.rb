require 'thor'
require 'typekitty/api'

module Typekitty
    class CLI < Thor
        option :token, :required => true

        desc 'kits', 'Lists your kits by their `id`'
        def kits
            puts ::Typekitty::API.kits
        end
    end
end
