require '../lib/sqlite3/sqlite3_db_connection_manager_proxy'

if __FILE__ == $PROGRAM_NAME
  connManager = Sqlite3DBConnectionManagerProxy.instance()
  db_connection = connManager.connection('./precio_justo.db')
  while true
    results = db_connection.execute('select * from oferta;')
    results.each { |row|
      puts row['producto'] + ',' + row['lugar']
    }
    sleep(10)
  end
end