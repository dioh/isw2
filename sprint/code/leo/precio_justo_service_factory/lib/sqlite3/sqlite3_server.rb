require 'drb/drb'
require File.dirname(__FILE__) + '/sqlite3_db_connection_manager'

class Sqlite3Server

  def initialize(uri)
    @uri=uri
    @front_object = Sqlite3DBConnectionManager.instance()
  end

  def start
    #$SAFE = 1 # disable eval() and friends

    DRb.start_service(@uri, @front_object)

    trap('INT') {
      DRb.stop_service()
    }

    # Wait for the drb server thread to finish before exiting.
    DRb.thread.join()
  end
end