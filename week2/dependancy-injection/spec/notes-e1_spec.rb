require 'notes-e1.rb'

xdescribe Note do
  describe 'note' do
    it 'print display the title and body' do
      note_formatter = double :formatter, format: "Title: title\nbody"
      note = Note.new("title", "body", note_formatter)
      expect(note.display).to eq "Title: title\nbody"
    end
  end
end