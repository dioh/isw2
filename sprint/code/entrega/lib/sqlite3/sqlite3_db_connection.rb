require 'drb/drb'
require 'sqlite3'

class Sqlite3DBConnection
  include DRbUndumped

  def initialize(path)
    db = SQLite3::Database.new(path)
    db.results_as_hash = true
    #db.type_translation = true
    @db = db
  end

  def execute(command)
    array = @db.execute(command).to_a()
    return array;
  end
end