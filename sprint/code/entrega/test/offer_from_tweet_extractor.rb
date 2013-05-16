#!/usr/bin/ruby
=begin rdoc
    Test cases for tweets parsing
    author: Hernan E. Modrow
=end

require_relative "../lib/entity/offer"
require_relative "../lib/serviceimplementation/offer_from_tweet"
require "twitter"
require "test/unit"

class TestOfferFromTweetPostionalExtractor < Test::Unit::TestCase
     
    def setup
        aTweetToOfferExtractor= TweetOfferPositionalExtractor.new 
        @aTweetToOffer = OfferFromTweet.new aTweetToOfferExtractor

        #@invalidOffer = Offer.new nil, nil, nil 
    end

    def test_create
        # Create a filter
    end

    def test_valid_tweet_with_address
        aTweetText= "Asado 15 pesos kilo Moreno 678 #PrecioJusto"

        aTweet= Twitter::Tweet.new :id => 1, :text => aTweetText
        anOffer= @aTweetToOffer.extractFrom aTweet

        assert_equal("Moreno 678",anOffer.location?.address)
        assert_equal(15,anOffer.price?)
        assert_equal("Asado",anOffer.product?)
    end

    def test_valid_tweet_with_currency_symbol
        aTweetText= "Asado $15 kilo Moreno 678 #PrecioJusto"

        aTweet= Twitter::Tweet.new :id => 1, :text => aTweetText
        anOffer= @aTweetToOffer.extractFrom aTweet

        assert_equal("Moreno 678",anOffer.location?.address)
        assert_equal(15,anOffer.price?)
        assert_equal("Asado",anOffer.product?)

    end

    def test_valid_tweet_with_geo
        aTweetText= "Asado 15 pesos kilo #PrecioJusto"
        aTweetPoint = {:type=>"point", :coordinates=>[0,1]}
        expectedOffer = Offer.new (GeoLocation.new 0,1), "naranja", 15

        aTweet= Twitter::Tweet.new :id => 1, :text => aTweetText, :geo => aTweetPoint
        anOffer= @aTweetToOffer.extractFrom aTweet

        assert_equal(0,anOffer.location?.latitude)
        assert_equal(1,anOffer.location?.longitude)
        assert_equal(15,anOffer.price?)
        assert_equal("Asado",anOffer.product?)
    end

    def test_no_valid_product_tweet
        aTweetText= "1Gorila 15 pesos kilo Martinez de Hoz 666 #PrecioJusto"

        aTweet= Twitter::Tweet.new :id => 1, :text => aTweetText
        anOffer= @aTweetToOffer.extractFrom aTweet

        assert(anOffer.product?.nil?, "Product found in \"" + aTweetText + "\"")
    end

    def test_no_location_in_tweet
        aTweetText= "Asado 15 pesos kilo #PrecioJusto"

        aTweet= Twitter::Tweet.new :id => 1, :text => aTweetText
        anOffer= @aTweetToOffer.extractFrom aTweet

        assert(anOffer.location?.nil?, "Location found in \"" + aTweetText + "\"")                
    end

    def test_no_price_in_tweet
        aTweetText= "Gorila kilo Martinez de Hoz 666 #PrecioJusto"

        aTweet= Twitter::Tweet.new :id => 1, :text => aTweetText
        anOffer= @aTweetToOffer.extractFrom aTweet

        assert(anOffer.price?.nil?,"Price found in \"" + aTweetText + "\"")                
    end

    #Units must be checked inside Offer creation
    #def test_no_unit_in_tweet
    #    aTweetText= "Gorila 15 pesos Martinez de Hoz 666#PrecioJusto"

    #    aTweet= Twitter::Tweet.new :id => 1, :text => aTweetText
    #    anOffer= @aTweetToOffer.extractFrom aTweet

    #    assert(anOffer.unit?.nil?, "Unit found in \"" + aTweetText + "\"")                
    #end

end
