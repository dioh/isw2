#!/usr/bin/ruby
=begin rdoc 
  * Name: Offer from tweet module
  * Description: Strategies to obtain an offer from a tweet 
  * Author: Hernan E. Modrow
  * Date: 2013-05-12
  * License: TODO
=end

require './offers'

class OfferDataFromTweetExtractor
	def extractFrom aTweet
		raise NotImplementedError.new("#extractFrom mus be implemented!")
	end
end

class TweetOfferPositionalExtractor < OfferDataFromTweetExtractor
	#Extract data from tweet where text is:
	#"product $float unit addressIsTextWithinUnintAndHashtag #hashtag
    def initialize
        @productRegExp= /(?<product>[[:alpha:]]+)[[:blank:]]*(?<rest>[[:alpha:]].*)/
        @priceRegExp= /(((?<currency_sign>\$)[[:blank:]]*(?<price_value>\d+(\.\d+)?))|(?<price_value>\d+(\.\d+)?)[[:blank:]]*(?<currency_name>(?i:peso(s)?)))[[:blank:]]*(?<rest>[[:alpha:]].*)/
        @unitRegExp= /(?<unit>[[:alpha:]]+)[[:blank:]]*(?<rest>[[:alpha:]].*)/
        @addressRegExp= /(?<address>(([[:alpha:]]|[[:blank:]])+[[:blank:]]*(\d+)))[[:blank:]]*(?<rest>[[:alpha:]].*)/
    end
    
	def extractFrom aTweet
        aText= aTweet.text
        
        #More abstraction needed
        aMatchData= @productRegExp.match(aText)        
        productStr= aMatchData[:product]
        aText= aMatchData[:rest]
        
        aMatchData= @priceRegExp.match(aText)        
        priceStr= aMatchData[:price]
        aText= aMatchData[:rest]

        aMatchData= @priceRegExp.match(aText)        
        priceStr= aMatchData[:price]
        aText= aMatchData[:rest]

        aMatchData= @unitRegExp.match(aText)        
        priceStr= aMatchData[:unit]
        aText= aMatchData[:rest]

        aMatchData= @addressRegExp.match(aText)        
        addressStr= aMatchData[:adress]
        
		return { "product" => productStr,
		         "price" => priceStr.to_f, 
				 "unit" => unitStr,
  			     "address" => addressStr,
				 "geo" => aTweet.geo 
				}
	end
end

class OfferFromTweet
	def initilize(anOfferDataFromTweetExtractor)
        @dataExtractor = anOfferDataFromTweetExtractor
	end

	def extractFrom aTweet
		data= @dataExtractor.extractFrom aTweet
		return Offer.fromHash data
	end
end