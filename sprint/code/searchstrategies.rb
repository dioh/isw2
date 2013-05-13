#!/usr/bin/ruby
=begin rdoc 
  * Name: Search module
  * Description: Strategies for the searches 
  * Author: Daniel J. Foguelman
  * Date: 2013-04-26
  * License: TODO
=end

class SearchParams
    attr_reader :product
    attr_reader :price
    attr_reader :location 
    def initialize(args_dict)
        @product = args_dict[:product]
        @price  = args_dict[:price]
        @location = args_dict[:location]
    end 
end

class SearchAction; 
    def initialize(filters, data)
        @filters = filters
        @data = data
    end

    def run 
        offers = @data 
        puts "Vamos a usar #{@filters.size} filtros, para #{offers.size} ofertas"

        @filters.each do | f |
            offers = f.apply(offers) 
            puts "ahora hay #{offers.size} ofertas"
        end
        return offers
    end 
end


class FiltersFactory 

    def get_filters_for search_params_dict
        filtros = []
        ObjectSpace.each_object(Class) do |filtro|
            if (filtro.superclass == Filter and  search_params_dict.key? filtro.for)
                value = search_params_dict[filtro.for] 
                filtros << filtro.new(value)
            end
        end
        return filtros
    end

end

class Filter 
    def initialize value
        @value = value 
    end

    def apply offers
        return offers.select &@condition
    end 
end

class FilterByPrice < Filter
    def self.for; return "price"; end
    def initialize value
        super
        @condition = Proc.new{|x| x.price? <= @value.to_i }
    end
end

class FilterByProduct < Filter
    def self.for; return "product"; end
    def initialize value
        super
        @condition = Proc.new{|x| x.product? == @value }
    end
end

