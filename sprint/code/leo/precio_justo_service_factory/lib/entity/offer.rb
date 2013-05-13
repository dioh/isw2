#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

class Offer
    def Offer.fromHash fromHash
        
    end

    def initialize(location, product, price)
        @location = location
        @prod = product
        @price = price 
    end 

    def product?
        return @prod
    end

    def price?
        return @price
    end
end

class Product
    def initialize(args)
        # TODO
    end


end
