require './connection'

class ConnectionManager

  def initialize
    @connections = Hash.new()
  end

  def add_by_name(name, connection_string)
    @connections.store(name, Connection.new(connection_string))
  end

  def get_by_name(name)
    return @connections[name]
  end
end