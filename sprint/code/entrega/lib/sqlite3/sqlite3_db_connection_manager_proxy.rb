require_relative 'sqlite3_client'

class Sqlite3DBConnectionManagerProxy

  def initialize
    @sqlite3_client = Sqlite3Client.new('druby://127.0.0.1:8998')
    @sqlite3_client.start()
  end

  def self.instance
    return @@instance ||= new()
  end

  def connection(connection_string)
    return @sqlite3_client.proxy.connection(connection_string)
  end

  private_class_method(:new)
end