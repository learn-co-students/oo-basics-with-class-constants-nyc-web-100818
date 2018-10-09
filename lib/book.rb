class Book
  attr_accessor :author, :page_count # removed for :genre bc need to define a writer explicitly 
  attr_reader :title, :genre # add in for genre bc we still want a reader

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  # Explicitly define the genre= method, to integrate our class constant into the method
  def genre=(genre)
    @genre = genre
    GENRES << genre # add logic for the class constant
  end

end
