require 'drb/drb'
#require './connection'

DRb.start_service()

trap('INT') {
  DRb.stop_service()
}

connection_manager = DRbObject.new_with_uri('druby://127.0.0.1:8999')

connA = connection_manager.get_by_name('connA')
connB = connection_manager.get_by_name('connB')

puts connA.get_connection_string()
puts connB.counter
connB.execute('do something')
puts connB.counter