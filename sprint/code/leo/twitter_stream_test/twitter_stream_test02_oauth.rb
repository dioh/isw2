require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key = 'MjHsfw9NMnDLFgYcO9yOg'
  config.consumer_secret = 'vdwhXkLqWGgWVAXFJop6WwzFrTckwPMSMKHvbdCKhWQ'
  config.oauth_token = '1423952552-as4KNuDXcaxr2dw03IkNaLKQjHBfZDGCVRwdDGP'
  config.oauth_token_secret = 'l6pALciqEZwHrPPrhkm0xs9prGkB7qngI3jvViJ1w1s'
  config.auth_method = :oauth
end

TweetStream::Client.new.track('microsoft', 'google') do |status|
  puts "#{status.text}"
end