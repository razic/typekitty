require 'hashie'
require 'typekitty/api'

module Typekitty
    class Kit < Hashie::Dash
        property :id, :required => true
        property :link
        property :name, :required => true
        property :analytics, :required => true
        property :badge, :required => true
        property :domains, :required => true
        property :families, :required => true

        def self.all
            Typekitty::API.kits
        end

        def self.find id
            Typekitty::API.kit id
        end
    end
end
