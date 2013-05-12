require './twitter_streaming_api'

client = TwitterStreamingAPI.new('MjHsfw9NMnDLFgYcO9yOg', 'vdwhXkLqWGgWVAXFJop6WwzFrTckwPMSMKHvbdCKhWQ', '1423952552-as4KNuDXcaxr2dw03IkNaLKQjHBfZDGCVRwdDGP', 'l6pALciqEZwHrPPrhkm0xs9prGkB7qngI3jvViJ1w1s')

client.track('microsoft', 'google') do |status|
  puts "#{status.text}"
end