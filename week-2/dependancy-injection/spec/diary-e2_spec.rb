require 'diary-e2.rb'

describe Diary do
  describe '#add' do
    it 'makes a new diary and entry class' do
      entry_double = double :entry
      entry_class_double = double :entry_class, new: entry_double

      diary = Diary.new
      diary.add("title", "body", entry_class_double)
      expect(diary.entries).to include(entry_double)
      
    end
  end
end