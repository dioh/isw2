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
	def extractFrom aTweet
		tweetSplitedText= aTweet.text.split
		tweetSlicedText= tweetSplitedText.slice!(0..2)
		address_text= tweetSlicedText.take_while(|i| i.starts_with?("#") * " "
		return { "product" => aTweet.text.split[0],
		         "price" => aTweet.text.split[1].splice(1..-1), 
				 "unit" => aTweet.text.split[2],
  			     "address" => address,
				 "geo" => aTweet.geo 
				}
	end
end

class OfferFromTweet
	def initilize(anOfferDataFromTweetExtractor)
        @dataExtractor = anOfferDataFromTweetExtractor
	end

	def extractFrom aTweet
		data= @dataExtractor aTweet
		return Offer.fromHash data
	end
end