require 'tweetstream'

TweetStream.configure do |config|
  config.username = 'ISW2PrecioJusto'
  config.password = 'ppp123456!'
  config.auth_method = :basic
end

TweetStream::Client.new.track('microsoft', 'google') do |status|
  puts "#{status.text}"
end