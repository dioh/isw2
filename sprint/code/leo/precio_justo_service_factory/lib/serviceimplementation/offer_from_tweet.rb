#!/usr/bin/ruby
=begin rdoc 
  * Name: Offer from tweet module
  * Description: Strategies to obtain an offer from a tweet 
  * Author: Hernan E. Modrow
  * Date: 2013-05-12
  * License: TODO
=end

require_relative '../entity/offer'
require_relative '../entity/location'
require 'twitter'

class OfferDataFromTweetExtractor
    def extractFrom aTweet
        raise NotImplementedError.new("#extractFrom mus be implemented!")
    end
end

# class TweetOfferPositionalExtractor < OfferDataFromTweetExtractor
class TweetOfferPositionalExtractor < OfferDataFromTweetExtractor
    #Extract data from tweet where text is:
    #"product $float unit addressIsTextWithinUnintAndHashtag #hashtag
    def initialize #aProductFactory, aUnitFactory, aPriceFactory, anAddressLocationFactory
	#Factories and Translations needed?
	#@factories= { "product" => aProductFactory,
	#	      "unit" => aUnitFactory,
        #              "price_value" => aPriceFactory,
	#	      "address" => anAddressLocationFactory}
        @regexps= [[Regexp.new("^(?<product>[[:alpha:]]+)(?<rest>.*)"), "product"],
                   [Regexp.new("([[:blank:]]*)(((?<currency_sign>\\$)[[:blank:]]*(?<price_value>\\d+(\\.\\d+)?))|(?<price_value>\\d+(\\.\\d+)?)[[:blank:]]*(?<currency_name>(?i:peso(s)?)))(?<rest>.*)"), "price_value"],
                    [Regexp.new("(?<unit>[[:alpha:]]+)[[:blank:]]*(?<rest>.*)"),"unit"],
                    [Regexp.new("(?<address>(([[:alpha:]]|[[:blank:]])+(\\d+)))[[:blank:]](?<rest>.*)"),"address"]]
	
    end

    # def extractMatchFromText aText, regExp, aMatch 
    #     aMatchData= regExp.match(aText)        
    #     aValue= aMatchData != nil ? aMatchData[aMatch] : nil
    #     return aValue, aMatchData[:rest]
    # end

    def extractFrom aTweet
        aText= aTweet.text
        aGeo= aTweet.geo
        offerData= {}
    	offerData.default("")

        #More abstraction needed
        #Check extractMatchFromText
	   @regexps.each do |regexp, value_name|
            aMatchData = regexp.match(aText)
            offerData[value_name] = aMatchData[value_name] unless aMatchData.nil?
            #offerData[value_name] = aMatchData != nil ? @factories[value_name].build(aMatchData[value_name]) : nil
            aText = aMatchData.nil? ? "" : aMatchData[:rest]
	   end
	     
        aProduct= offerData["product"]
        aPrice= offerData["price_value"].to_f
        aUnit= offerData["unit"]
        anAddressLocation= AddressLocation.new offerData["address"]
        #for future usage
        #anGeoLotacion= [ anAddressLocation.geoLocation, GeoLocation.new aGeo ].compact.first

        Offer.new anAddressLocation, aProduct, aPrice, aUnit
    end

end

class OfferFromTweet
    attr_writer :dataExtractor

    def initialize anOfferDataFromTweetExtractor
        @dataExtractor = anOfferDataFromTweetExtractor
    end

    def extractFrom aTweet
        return @dataExtractor.extractFrom aTweet
    end
end
