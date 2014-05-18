require 'hashie'
require 'typekitty/api'

module Typekitty
    class Library < Hashie::Dash
        property :id, :required => true
        property :link, :required => true
        property :name, :required => true

        def self.all
            Typekitty::API.libraries.inject([]) do |libs, lib|
                libs << new(lib)
            end
        end
    end
end
