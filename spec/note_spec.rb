require 'note'

describe Note do
  
  describe 'display' do

    it 'formats a new note' do
      note = Note.new("Title for Note", "Test body content for Note class.")
      expect(note.display).to eq "Title: Title for Note\nTest body content for Note class."
    end

  end

end

describe NoteFormatter do

  it 'formats a note' do
    note = Note.new("Title for NoteFormatter", "Test body content.")
    expect(subject.format(note)).to eq "Title: Title for NoteFormatter\nTest body content."
  end

end