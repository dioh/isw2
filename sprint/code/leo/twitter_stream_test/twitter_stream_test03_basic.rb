require 'tweetstream'

client = TweetStream::Client.new({:username => 'ISW2PrecioJusto',
                                  :password => 'ppp123456',
                                  :auth_method => :basic})

client.track('microsoft', 'google') do |status|
  puts "#{status.text}"
end