#!/usr/bin/ruby
=begin rdoc 
  * Name: Search module
  * Description: Strategies for the searches 
  * Author: Daniel J. Foguelman
  * Date: 2013-04-26
  * License: TODO
=end

class SearchParams
    :attr_accesor :product, :price, :location 
    def initialize(args_dict)
        @product = args_dict[:product]
        @price  = args_dict[:price]
        @location = args_dict[:location]
    end 
end

class Search; 
    def initialize(filters)
        @filters = filters
    end

    def do
        # TODO
    end
end

class Filter

    def initialize condition
        @condition = condition
    end

    def apply offers
        return offers.select &@condition
    end
end

class FilterByPrice < Filter

end

class FilterByProduct < Filter
end

