require '../lib/sqlite3/sqlite3_db_connection_manager_proxy'
require '../lib/twitter/twitter_streaming_api'
class TwitterOfflineStreaming

  def initialize(connection_string, consumer_key, consumer_secret, oauth_token, oauth_token_secret)
    @connection = Sqlite3DBConnectionManagerProxy.instance().connection(connection_string)
    @search_api = TwitterStreamingAPI.new(consumer_key, consumer_secret, oauth_token, oauth_token_secret)
  end

  def start
    @search_api.track('tomate') { |status|
      #puts "#{status.text}"
      command = "insert into oferta(producto,precio,unidad,lugar) values('tomate',10.05,'kg','#{status.text}')"
      @connection.execute(command)
    }
  end
end