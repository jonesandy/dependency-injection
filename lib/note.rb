class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  def random
  end

  attr_reader :title, :body
end

class NoteFormatter
  #no method even defined in NoteFormatter
end