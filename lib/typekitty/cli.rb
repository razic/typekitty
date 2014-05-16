require 'thor'
require 'typekitty/client'

module Typekitty
    class CLI < Thor
        option :token, :required => true

        desc 'kits', 'Lists your kits by their `id`'
        def kits
            puts client.kits
        end

        no_commands do
            def client
                @client ||= Typekitty::Client.new options[:token]
            end
        end
    end
end
