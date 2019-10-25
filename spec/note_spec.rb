require 'note'

describe Note do
  
  describe 'display' do

    it 'formats a new note' do
      # create my double
      formatter_double = double :NoteFormatter

      # create an actual instance of my class being tested.
      note = Note.new("Random", "Test body copy.", formatter_double)

      #define my method on the double and what it should return.
      allow(formatter_double).to receive(:format) { "Title: #{note.title}\n#{note.body}" }
      
      #test that it does
      expect(note.display).to eq "Title: Random\nTest body copy."
    end

  end

end
