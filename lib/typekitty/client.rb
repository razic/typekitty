require 'typekitty/api'

module Typekitty
    class Client < API
        # Lists kits by their `id`
        def kits
            [*self.class.get('/kits')['kits']].map { |kits| kits['id'] }
        end
    end
end
