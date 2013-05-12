require 'drb/drb'
require './connection_manager'
#$SAFE = 1 # disable eval() and friends

front_object = ConnectionManager.new()

front_object.add_by_name('connA','conn string A')
front_object.add_by_name('connB','conn string B')
front_object.add_by_name('connC','conn string C')

DRb.start_service('druby://127.0.0.1:8999', front_object)

trap('INT') {
  DRb.stop_service()
}

# Wait for the drb server thread to finish before exiting.
DRb.thread.join()