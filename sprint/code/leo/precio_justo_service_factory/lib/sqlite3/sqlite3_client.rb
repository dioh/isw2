require 'drb/drb'

class Sqlite3Client

  def initialize(uri)
    @uri = uri
  end

  def start
    DRb.start_service()

    trap('INT') {
      DRb.stop_service()
    }

    @proxy = DRbObject.new_with_uri(@uri)
  end

  attr_reader :proxy

end
