#!/usr/bin/ruby
=begin rdoc
  * Name: Search module
  * Description: Strategies for the searches
  * Author: Daniel J. Foguelman
  * Date: 2013-04-26
  * License: TODO
=end

require_relative '../search_strategies'

class OnlineSearchAction < SearchAction
  def initialize(filters, data)
    @filters = filters
    @data = data
  end

  def run
    offers = @data
    puts "Vamos a usar #{@filters.size} filtros, para #{offers.size} ofertas"

    @filters.each do |f|
      offers = f.apply(offers)
      puts "ahora hay #{offers.size} ofertas"
    end
    return offers
  end
end

class OnlineFiltersFactory < FiltersFactory

  def get_filters_for search_params_dict
    filtros = []
    ObjectSpace.each_object(Class) do |filtro|
      if (filtro.superclass == OnlineFilter and search_params_dict.key? filtro.for)
        value = search_params_dict[filtro.for]
        filtros << filtro.new(value)
      end
    end
    return filtros
  end

end

class OnlineFilter < Filter
  def initialize value
    @value = value
  end

  def apply offers
    return offers.select &@condition
  end
end

class OnlineFilterByLocation < OnlineFilter
  def self.for;
    return "location";
  end

  def initialize value
    super
    @condition = Proc.new { |x| x.location? == @value }
  end
end

class OnlineFilterByPrice < OnlineFilter
  def self.for;
    return "price";
  end

  def initialize value
    super
    @condition = Proc.new { |x| x.price? <= @value.to_f }
  end
end

class OnlineFilterByProduct < OnlineFilter
  def self.for;
    return "product";
  end

  def initialize value
    super
    @condition = Proc.new { |x| x.product? == @value }
  end
end

class OnlineFilterKeys < FilterKeys
  def get
    keys = []
    ObjectSpace.each_object(Class) do |filtro|
      if (filtro.superclass == OnlineFilter)
        keys << filtro.for
      end
    end
    return keys
  end
end
