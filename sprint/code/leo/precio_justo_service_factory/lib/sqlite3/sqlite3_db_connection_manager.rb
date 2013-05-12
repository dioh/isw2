require 'sqlite3'
require '../lib/sqlite3/sqlite3_db_connection'

class Sqlite3DBConnectionManager

  def initialize
    @db_connections = Hash.new()
  end

  def self.instance
    return @@instance ||= new()
  end

  def connection(connectionString)
    path = File.absolute_path(connectionString)

    unless (@db_connections.has_key?(path))
      @db_connections.store(path, Sqlite3DBConnection.new(path))
    end

    return @db_connections[path]
  end

  private_class_method(:new)
end