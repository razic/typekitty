require 'typekitty/api'

module Typekitty
    class Client < API
        # Lists your kits
        def kits
            self.class.get('/kits')['kits'].map { |kits| kits['id'] }
        end
    end
end
