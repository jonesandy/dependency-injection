# Dependency injection

Repository based on the Makers dependency injection practical. For the purposes of isolating the learning outcome I will keep the excercises in seperate files, but not split out classes into seperate files.

## Exercises

### Exercise 1

This was the exercise given:

Amend the following classes to be testable in isolation, then write the tests for them.

```
class Note
  def initialize(title, body)
    @title = title
    @body = body
    @formatter = NoteFormatter.new
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
```
You will know you've succeeded when you can delete the format method on NoteFormatter and your Note tests still pass.

My production code solution found [here](lib/note.rb) and test code found [here](spec/note_spec.rb).

### Exercise 2