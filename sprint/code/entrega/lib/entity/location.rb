#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

class GeoLocation
    attr_reader :coordinates
    
    def initialize aGeo
        @coordinates= aGeo.coordinates unless aGeo.nil?
    end
end

class AddressLocation
    attr_reader :address

    def initialize address
        @address= address
    end

    #To be implemented
    def geoLocation
        return nil
    end

    def to_s
        return @address
    end
end
