require 'typekitty/api'

module Typekitty
    class Kit
        attr_accessor :id

        def self.all
            Typekitty::API.kits.inject([]) do |kits, id|
                kits << new(id)
            end
        end

        def initialize id
            @id = id
        end
    end
end
