require_relative '../../sqlite3/sqlite3_db_connection_manager_proxy'
require_relative '../../entity/offer'
require_relative 'offline_search_strategies'
require_relative '../precio_justo_service'

class PrecioJustoOfflineService < PrecioJustoService

  def initialize(connection_string)
    connManager = Sqlite3DBConnectionManagerProxy.instance()
    @connection = connManager.connection(connection_string)
  end

  def search(filters)
    offers = Array.new()

    offers_result = @connection.execute('select * from offer;')
    offers_result.each { |offer_row|
      offers.push(Offer.new(offer_row['location'], offer_row['product'], offer_row['price'], offer_row['unit']))
    }

    sa = OfflineSearchAction.new filters, offers
    return sa.run
  end
end