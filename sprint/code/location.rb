#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

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
