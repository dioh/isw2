#!/usr/bin/ruby
=begin rdoc 
  * Name: Search module
  * Description: Strategies for the searches 
  * Author: Daniel J. Foguelman
  * Date: 2013-04-26
  * License: TODO
=end

class Search; 
    def initialize(filters)
        @filters = filters
    end

    def do
        # TODO
    end
end

class Filter
    def apply offers, condition
        return offers.select &condition
    end
end

class FilterByPrice < Filter
    def initialize
        # TODO
    end

end

class FilterByProduct < Filter
    def initialize
        # TODO
    end 
end

