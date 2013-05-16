require_relative '../../twitter/twitter_search_api'
require_relative 'online_search_strategies'
require_relative '../precio_justo_service'
require_relative '../offer_from_tweet'

class PrecioJustoOnlineService < PrecioJustoService

  def initialize(consumer_key, consumer_secret, oauth_token, oauth_token_secret, search_filter)
    @search_api = TwitterSearchAPI.new({:consumer_key => consumer_key,
                                        :consumer_secret => consumer_secret,
                                        :oauth_token => oauth_token,
                                        :oauth_token_secret => oauth_token_secret})
    @search_filter = search_filter
    @offer_from_tweet = OfferFromTweet.new(TweetOfferPositionalExtractor.new())
  end

  def search(filters)
    offers = Array.new()

    tweets = @search_api.search(@search_filter)
    tweets.each { |tweet|
      offers.push(@offer_from_tweet.extractFrom(tweet))
    }

    sa = OnlineSearchAction.new filters, offers
    return sa.run
  end
end