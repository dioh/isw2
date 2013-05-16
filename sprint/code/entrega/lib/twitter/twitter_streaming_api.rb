require 'tweetstream'

class TwitterStreamingAPI
  def initialize(consumer_key, consumer_secret, oauth_token, oauth_token_secret)
    @client = TweetStream::Client.new({:consumer_key       => consumer_key,
                                       :consumer_secret    => consumer_secret,
                                       :oauth_token        => oauth_token,
                                       :oauth_token_secret => oauth_token_secret,
                                       :auth_method        => :oauth})
  end

  def track(*keywords, &block)
    @client.track(keywords, &block)
  end
end