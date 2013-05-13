#!/usr/bin/ruby
=begin rdoc
    Test cases for tweets parsing
    author: Hernan E. Modrow
=end

require "./offers"
require "./offer_from_tweet"
require "twitter/tweet"
require "test/unit"

class TestOfferFromTweetPostionalExtractor < Test::Unit::TestCase
     
    def setup
        @aTweetToOffer = OfferFromTweet.new(TweetOfferPositionalExtractor.new)
        @invalidOffer = InvalidOffer.new 
    end

    def test_create
        # Create a filter
    end

    def test_valid_tweet_with_address
        aTweetText= "Naranja 15 pesos kilo Moreno 678 #PrecioJusto"
        expectedOffer = Offer.new "Moreno 678", "naranja", 15

        aTweet= Tweet.new :id => 1, :text => aTweetText
        anOffer= aTweetToOffer.extractFrom aTweet

        assert_equal(expectedOffer,anOffer)
    end

    def test_valid_tweet_with_geo
        aTweetText= "Naranja 15 pesos kilo #PrecioJusto"
        aTweetPoint= Tweet::Geo::Point :lat => 0, :long => 0
        expectedOffer = Offer.new aTweetPoint, "naranja", 15

        aTweetToOffer = OfferFromTweet.new
        aTweet= Tweet.new :id => 1, :text => aTweetText, :geo => aTweetPoint
        anOffer= aTweetToOffer.extractFrom aTweet

        assert_equal(expectedOffer,anOffer)        
    end

    def test_no_valid_product_tweet
        aTweetText= "Gorila 15 pesos kilo Martinez de Hoz 666 #PrecioJusto"

        aTweetToOffer = OfferFromTweet.new
        aTweet= Tweet.new :id => 1, :text => aTweetText
        anOffer= aTweetToOffer.extractFrom aTweet

        assert_equal(@invalidOffer,anOffer)        
        
    end

    def test_no_location_in_tweet
        aTweetText= "Naranja 15 pesos kilo #PrecioJusto"

        aTweetToOffer = OfferFromTweet.new
        aTweet= Tweet.new :id => 1, :text => aTweetText
        anOffer= aTweetToOffer.extractFrom aTweet

        assert_equal(@invalidOffer,anOffer)                
    end

    def test_no_price_in_tweet
        aTweetText= "Gorila kilo Martinez de Hoz 666 #PrecioJusto"

        aTweetToOffer = OfferFromTweet.new
        aTweet= Tweet.new :id => 1, :text => aTweetText
        anOffer= aTweetToOffer.extractFrom aTweet

        assert_equal(@invalidOffer,anOffer)                
    end

    def test_no_unit_in_tweet
        aTweetText= "Gorila 15 pesos Martinez de Hoz 666#PrecioJusto"

        aTweetToOffer = OfferFromTweet.new
        aTweet= Tweet.new :id => 1, :text => aTweetText
        anOffer= aTweetToOffer.extractFrom aTweet

        assert_equal(@invalidOffer,anOffer)                
    end

end
