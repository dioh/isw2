require_relative '../sqlite3/sqlite3_db_connection_manager_proxy'
require_relative '../entity/offer'

class PrecioJustoOfflineService

  def initialize
    connManager = Sqlite3DBConnectionManagerProxy.instance()
    @connection = connManager.connection('./precio_justo.db')
  end

  def search(producto)
    ofertas = Array.new()

    ofertas_result = @connection.execute('select * from oferta where producto = \'' + producto +'\';')
    ofertas_result.each { |oferta_row|
      ofertas.push(Offer.new(oferta_row['lugar'], oferta_row['producto'], oferta_row['precio']))
    }

    return ofertas
  end
end