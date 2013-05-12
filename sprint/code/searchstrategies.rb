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

class SearchAction; 
    def initialize(search_keys)
        @filters = self.get_filters_for_search_keys search_keys
    end

    def do search_parameters
        puts "Doing a Search for #{search_parameters}"
    end

    def get_filters_for_search_keys keys
        @filter_factory.get_filter(k)
    end
end


class FiltersFactory
    def initialize keys

    end

    def get_filters keys
        klasses =  ObjectSpace.each_object(Class).select { |filtro| filtro.superclass == Filter and  keys.include? filtro.for } 

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
    def self.for; return :price; end
end

class FilterByProduct < Filter
    def self.for; return :product; end
end

