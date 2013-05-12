#!/usr/bin/ruby
=begin rdoc
    Test cases for the search action
    author: Daniel J. Foguelman
=end

require "./actions"
require "./searchstrategies"
require "./offers"
require "test/unit"

class MockDataManager
    attr_reader :data
    def initialize lst
        @data  = lst
    end
end

class TestFiltering < Test::Unit::TestCase
     
    def test_create
        # Create a filter
        filterByProd = FilterByProduct.new "Naranja" 
        filterByPrice = FilterByPrice.new  30
    end

    def test_create_offers
        of1 = Offer.new "Belgrano", "Naranjas", 30
        of2 = Offer.new "Saavedra", "Peras", 35 
    end

    def test_filter_by_price

        of1 = Offer.new "Belgrano", "Naranjas", 30
        of2 = Offer.new "Saavedra", "Peras", 35 

        offers = [of1, of2]

        filterByPrice = FilterByPrice.new 30

        # priceCondition = Proc.new {|x| x > 30 }
        filteredOffers = filterByPrice.apply offers
        puts "ofertas #{filteredOffers.size}"
        assert_equal(1, filteredOffers.size, "offers are not filtered!") 
    end

    def test_filter_by_product
        of1 = Offer.new "Belgrano", "Naranjas", 30
        of2 = Offer.new "Saavedra", "Peras", 35 

        offers = [of1, of2] 
        filterByProduct = FilterByProduct.new "Naranjas"

        # priceCondition = Proc.new {|x| x > 30 }
        filteredOffers = filterByProduct.apply offers
        assert_equal(1, filteredOffers.size, "offers are not filtered!") 
    end

    def test_filters_factory
        ff = FiltersFactory.new
        search_params = { :product => "Naranjas", :price => 30 }
        filters = ff.get_filters_for search_params
        assert_equal(filters.size, 2, "Filters missing")
    end

    def test_search_action
        ff = FiltersFactory.new
        search_params = { :product => "Naranjas", :price => 31 }
        filters = ff.get_filters_for search_params
        data = [(Offer.new "Belgrano", "Naranjas", 30), (Offer.new "Belgrano", "Bananas", 57)]

        sa = SearchAction.new filters, data

        searched_offers = sa.run

        assert_equal(1, searched_offers.size, "Unfiltered offers =(") 
    end

end
