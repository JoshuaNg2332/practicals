class Diary_Entry

  def self.all
    @connection = PG.connect(dbname: 'diary')
    result = connection.exec('SELECT * FROM entry;')
  end

end