require 'twitter'
#require 'twitter_search'

class TwitterSearchAPI

  def initialize(options = {})
    #this gem requires auth
    @client = Twitter::Client.new(options)

    #this gem doesn't require auth
    #@client = TwitterSearch::Client.new()
  end

  def search(query, page = '1', result_type = 'recent', rpp = '100')
    @client.search(query, {:result_type => result_type, :count => rpp}).statuses
    #@client.query({:q => query, :page => page, :result_type => result_type, :rpt => rpp}).map() {|tweet|
    #  tweet.text
    #}
  end

end