class Diary
  attr_reader :entries
  def initialize
    @entries = []
  end

  def add(my_title, my_body, entry_class = Entry)
    @entries << entry_class.new(my_title, my_body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title, :body
end