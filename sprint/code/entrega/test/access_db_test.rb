require_relative '../lib/sqlite3/sqlite3_db_connection_manager_proxy'

if __FILE__ == $PROGRAM_NAME
  connManager = Sqlite3DBConnectionManagerProxy.instance()
  db_connection = connManager.connection('./precio_justo.db')
  num = -1
  while true
    puts Time.now.inspect
    results = db_connection.execute('select * from oferta;')
    results.each_with_index { |row,index|
      if  (index > num)
        puts row['producto'] + ',' + row['lugar']
        num = index
      end
    }
    sleep(10)
  end
end