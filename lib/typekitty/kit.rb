require 'hashie'
require 'typekitty/api'

module Typekitty
    class Kit < Hashie::Dash
        property :id, :required => true
        property :link
        property :name
        property :analytics
        property :badge
        property :domains
        property :families

        def self.all
            Typekitty::API.kits
        end

        def self.find id
            Typekitty::API.kit id
        end
    end
end
