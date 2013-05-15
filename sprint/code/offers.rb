#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

class Offers
    
end

class Offer
    def Offer.fromHash aHash
        aProduct= aHash[:product] 
        aPrice= aHash[:price]
        aUnit= aHash[:unit]
        anAddressLocation= AddressLocation.new aHash[:address]
        aGeo= (aHash[:geo] != nil ? aHash[:geo] : nil)
        aGeoLocation= GeoLocation.new aGeo.lat, aGeo.long unless aGeo.nil?
          
	    aLocation= aHash[:address].nil? ? aGeoLocation : anAddressLocation

        Offer.new aLocation, aProduct, aPrice            
    end

    def initialize(location, product, price)
        @location = location
        @prod = product
        @price = price 
    end

    def location?
        return @location
    end 

    def product?
        return @prod
    end

    def price?
        return @price
    end
end

class GeoLocation
    attr_reader :latitude, :longitude
    def initialize latitude, longitude
        @latitude= latitude
        @longitude= longitude
    end

    def to_s
        return @latitude.to_s + "," + @longitude.to_s 
    end
end

class AddressLocation
    attr_reader :address
    def initialize address
        @address= address
    end
    def to_s
        return @address
    end
end
# class Product
#     def initialize(args)
#         # TODO
#     end
# end

# class InvalidProduct
#     def ==(other)
#         return false
#     end
#     def !=(other)
#         return true
#     end
# end

# class InvalidUnit
#     def ==(other)
#         return false
#     end
#     def !=(other)
#         return true
#     end
# end


# class InvalidOffer
#     #TODO Check if makes sense
#     attr_reader :location, :product, :price
#     def initialize
#         @location= InvalidLocation.new
#         @product= InvalidProduct.new
#         @price= InvalidPrice.new
#     end
# end

# class InvalidPrice
#     def >(aValue)
#         return false
#     end
#     def <(aValue)
#         return false
#     end
#     def ==(aValue)
#         return false
#     end
#     def >=(aValue)
#         return false
#     end
#     def <=(aValue)
#         return false
#     end
#     def !=(aValue)
#         #? Is this correct?
#         return true
#     end
# end

# class InvalidLocation
#     #TODO DO
# end

#Code under this is not needed

# class Price
    #TODO generar las instancias a partir de la lista
    # @@extractoRegExp= /(((?<currency_sign>\$)[[:blank:]]*(?<value>\d+(\.\d+)?))|(?<value>\d+(\.\d+)?)[[:blank:]]*(?<currency_name>(?i:peso(s)?)))/
    # @@currency_signs= { "peso" => "$", "pesos" => "$" }

    #attr_read :currencySign, :value
    # def Price.fromString aString
        # aMatchData= @@extractoRegExp.match(aString)
        # aValue= aMatchData[:value].to_f
        # aCurrencySign= aMatchData[:currency_sign] != nil ? aMatchData[:currency_sign] : aMatchData[:currency_name].currency_name
        # if (aValue != nil and aCurrencySign != nil)
            # return aValue
        # else
            # return InvalidPrice.new
        # end
    # end
#   TODO CHECK IF IS NECESARY
#    def initialize currencySign, value
#        @currencySign= currencySign
#        @value= value
#    end
#    def to_s
#        return @currencySign + " " + @value.to_s
#    end
#end 

# class PriceFromStringExtractor
    # def extractFrom aString
        # raise NotImplementedError.new("#extractFrom mus be implemented!")
    # end
    # def canExtract? aString
        # raise NotImplementedError.new("#canExtract? mus be implemented!")
    # end
# end

# class PriceFromRegExpExtractor
    #Use a regexp to extract price
    #regexp must have a group named currency_sign
    #and other value. Value must be float convertible.
    # def initialize aRegExp
        # @regExp= aRegExp
    # end
    # def canExtract? aString
        # @regExp.match(aString) != nil
    # end
    # def extractFrom aString
        # aMatchData= @regExp.match(aString)
        # Price.new aMatchData.currency_sign aMatchData.value.to_f
    # end
# end
