#!/usr/bin/ruby
=begin rdoc 
  * Name: Offer from tweet module
  * Description: Strategies to obtain an offer from a tweet 
  * Author: Hernan E. Modrow
  * Date: 2013-05-12
  * License: TODO
=end

require './offers'
require 'twitter'

class OfferDataFromTweetExtractor
    def extractFrom aTweet
        raise NotImplementedError.new("#extractFrom mus be implemented!")
    end
end

# class TweetOfferPositionalExtractor < OfferDataFromTweetExtractor
class TweetOfferPositionalExtractor
    #Extract data from tweet where text is:
    #"product $float unit addressIsTextWithinUnintAndHashtag #hashtag
    def initialize
        @productRegExp = Regexp.new("(?<product>[[:alpha:]]+)[[:blank:]]*(?<rest>[[:alpha:]].*)")
        @priceRegExp = Regexp.new("(((?<currency_sign>\$)[[:blank:]]*(?<price_value>\d+(\.\d+)?))|(?<price_value>\d+(\.\d+)?)[[:blank:]]*(?<currency_name>(?i:peso(s)?)))[[:blank:]]*(?<rest>[[:alpha:]].*)")
        @unitRegExp = Regexp.new("(?<unit>[[:alpha:]]+)[[:blank:]]*(?<rest>[[:alpha:]].*)")
        @addressRegExp = Regexp.new("/(?<address>(([[:alpha:]]|[[:blank:]])+(\d+)))")
    end

    # def extractMatchFromText aText, regExp, aMatch 
    #     aMatchData= regExp.match(aText)        
    #     aValue= aMatchData != nil ? aMatchData[aMatch] : nil
    #     return aValue, aMatchData[:rest]
    # end

    def extractFrom aTweet
        aText= aTweet.text
        aGeo= aTweet.geo
        offerData= { :geo => aGeo}

        #More abstraction needed
        #Check extractMatchFromText

        aMatchData = @productRegExp.match(aText)        
        offerData[:producto] = aMatchData != nil ? aMatchData[:product] : nil 
        aText = aMatchData.nil? ? "" : aMatchData[:rest]

        aMatchData = @priceRegExp.match(aText)        
        offerData[:price_value] = aMatchData != nil ? aMatchData[:price_value] : nil 
        aText = aMatchData.nil? ? "" : aMatchData[:rest]

        aMatchData= @unitRegExp.match(aText)        
        offerData[:unit]= aMatchData != nil ? aMatchData[:unit] : nil
        aText= aMatchData.nil? ? "" : aMatchData[:rest]

        aMatchData= @addressRegExp.match(aText)        
        addressStr= aMatchData != nil ? aMatchData[:address] : nil

        return offerData
    end
end

class OfferFromTweet
    def initialize anOfferDataFromTweetExtractor
        @dataExtractor = anOfferDataFromTweetExtractor
    end

    def extractFrom aTweet
        data= @dataExtractor.extractFrom aTweet
        return Offer.fromHash data
    end
end
