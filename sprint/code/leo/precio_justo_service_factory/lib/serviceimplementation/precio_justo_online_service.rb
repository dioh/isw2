require_relative '../twitter/twitter_search_api'

class PrecioJustoOnlineService

  def initialize()
    @search_api = TwitterSearchAPI.new()
  end

  def search(producto)
    return @search_api.search(producto)
  end
end