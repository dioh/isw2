require 'drb/drb'
class Connection
  include DRbUndumped

  def initialize(connection_string)
    @connection_string = connection_string
    @execute_counter = 0
  end

  def get_connection_string
    return @connection_string
  end

  def execute(command)
    @execute_counter += 1
  end

  def counter
    return @execute_counter
  end
end