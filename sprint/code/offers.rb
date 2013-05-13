#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

class Offers
    
end

class InvalidOffer
    #TODO Check if makes sense
    attr_read :location, :product, :price 
end

class Offer
    def Offer.fromHash hash
        aProduct= Product.new hash[:product] 
        aPrice= hash[:price]
        aUnit= Unit.new hash[:unit]
        anAddressLocation= Location.fromAddressStr hash[:address]
        aGeoLocation= Location.fromGeo hash[:geo]

        if (aProduct.class != InvalidProduct &&
            aPrice != InvalidPrice &&
            aUnit != InvalidUnit &&
            (anAddressLocation != InvalidLocation ||
             aGeoLocation != InvalidLocation))
            Offer.new (anAddressLocation != InvalidLocation? anAddressLocation : aGeoLocation), aProduct, aPrice            
        else
            InvalidOffer.new
        end
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

class Price
    #TODO generar las instancias a partir de la lista
    @@regExpsExtractors= [ /(?<currency_sign>\$)[[:blank:]]*(?<value>\d+(\.\d+)?)/,
                   /(?<value>\d+(\.\d+)?)[[:blank:]]*(?<currency_sign>\$)/ ]

    attr_read :currencySign, :value
    def Price.fromString aString
        aString.sub /(?i:peso(s)?)/, "$"
        
    end
    def initialize currencySign, value
        @currencySign= currencySign
        @value= value
    end
    def to_s
        return @currencySign + " " + @value.to_s
    end
end 

class PriceFromStringExtractor
    def extractFrom aString
        raise NotImplementedError.new("#extractFrom mus be implemented!")
    end
    def canExtract? aString
        raise NotImplementedError.new("#canExtract? mus be implemented!")
    end
end

class PriceFromRegExpExtractor
    # Use a regexp to extract price
    # regexp must have a group named currency_sign
    # and other value. Value must be float convertible.
    def initialize aRegExp
        @regExp= aRegExp
    end
    def canExtract? aString
        @regExp.match(aString) != nil
    end
    def extractFrom aString
        aMatchData= @regExp.match(aString)
        Price.new aMatchData.currency_sign aMatchData.value.to_f
    end
end