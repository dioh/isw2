require 'tweetstream'

client = TweetStream::Client.new({:consumer_key => 'MjHsfw9NMnDLFgYcO9yOg',
                                  :consumer_secret => 'vdwhXkLqWGgWVAXFJop6WwzFrTckwPMSMKHvbdCKhWQ',
                                  :oauth_token => '1423952552-as4KNuDXcaxr2dw03IkNaLKQjHBfZDGCVRwdDGP',
                                  :oauth_token_secret => 'l6pALciqEZwHrPPrhkm0xs9prGkB7qngI3jvViJ1w1s',
                                  :auth_method => :oauth})

client.track('microsoft', 'google') do |status|
  puts "#{status.text}"
end