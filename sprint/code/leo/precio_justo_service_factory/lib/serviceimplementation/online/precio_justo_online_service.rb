require_relative '../../twitter/twitter_search_api'
require_relative 'online_search_strategies'
require_relative '../precio_justo_service'

class PrecioJustoOnlineService < PrecioJustoService

  def initialize(consumer_key, consumer_secret, oauth_token, oauth_token_secret, search_filter)
    @search_api = TwitterSearchAPI.new({:consumer_key => consumer_key,
                                        :consumer_secret => consumer_secret,
                                        :oauth_token => oauth_token,
                                        :oauth_token_secret => oauth_token_secret})
    @search_filter = search_filter
  end

  def search(filters)
    sa = OnlineSearchAction.new filters, @search_api.search(@search_filter)
    return sa.run
  end
end