require_relative '../../application/service'
require_relative '../../sqlite3/sqlite3_db_connection_manager_proxy'
require_relative '../../twitter/twitter_streaming_api'

class TwitterOfflineStreaming < Service

  def initialize(connection_string, consumer_key, consumer_secret, oauth_token, oauth_token_secret, search_filter)
    @connection = Sqlite3DBConnectionManagerProxy.instance().connection(connection_string)
    @search_api = TwitterStreamingAPI.new(consumer_key,
                                          consumer_secret,
                                          oauth_token,
                                          oauth_token_secret)
    @search_filter = search_filter
    @offer_from_tweet = OfferFromTweet.new(TweetOfferPositionalExtractor.new())
  end

  def start
    @search_api.track(@search_filter) { |tweet|
      offer = @offer_from_tweet.extractFrom(tweet)

      #puts "#{status.text}"
      command = "insert into offer(product,price,unit,location) values('#{offer.product?}',#{offer.price},'#{offer.unit?}','#{offer.location?.address}')"
      @connection.execute(command)
    }
  end
end