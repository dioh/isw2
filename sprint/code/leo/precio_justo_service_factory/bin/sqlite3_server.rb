require '../lib/sqlite3/sqlite3_server'

if __FILE__ == $PROGRAM_NAME
  x = Sqlite3Server.new('druby://127.0.0.1:8998')
  x.start()
end