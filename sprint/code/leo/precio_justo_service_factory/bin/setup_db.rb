require_relative '../lib/sqlite3/sqlite3_db_connection_manager_proxy'

if __FILE__ == $PROGRAM_NAME
  connManager = Sqlite3DBConnectionManagerProxy.instance()
  db_connection = connManager.connection('./precio_justo.db')
  db_connection.execute('create table oferta (producto TEXT NOT NULL, precio DECIMAL(10,5) NOT NULL, unidad TEXT NOT NULL, lugar TEXT NOT NULL);')
end