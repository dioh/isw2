#!/usr/bin/ruby
=begin rdoc
    Test cases for the search action
    author: Daniel J. Foguelman
=end

require "./actions"
require "./searchstrategies"
require "./offers"
require "test/unit"

class TestFiltering < Test::Unit::TestCase
     
    def test_create
        # Create a filter
        filterByProd = FilterByProduct.new  Proc.new {}
        filterByPrice = FilterByPrice.new  Proc.new {}
    end

    def test_create_offers
        of1 = Offer.new "Belgrano", "Naranjas", 30
        of2 = Offer.new "Saavedra", "Peras", 35 
    end

    def test_filter_by_price

        of1 = Offer.new "Belgrano", "Naranjas", 30
        of2 = Offer.new "Saavedra", "Peras", 35 

        offers = [of1, of2]

        filterByPrice = FilterByPrice.new Proc.new{|x| x.price? > 30}

        # priceCondition = Proc.new {|x| x > 30 }
        filteredOffers = filterByPrice.apply offers
        assert_equal(filteredOffers.size, 1, "offers are not filtered!") 
    end

    def test_filter_by_product
        of1 = Offer.new "Belgrano", "Naranjas", 30
        of2 = Offer.new "Saavedra", "Peras", 35 

        offers = [of1, of2]

        filterByProduct = FilterByProduct.new Proc.new{|x| x.product? == "Naranjas"}

        # priceCondition = Proc.new {|x| x > 30 }
        filteredOffers = filterByProduct.apply offers
        assert_equal(filteredOffers.size, 1, "offers are not filtered!") 
    end

end
