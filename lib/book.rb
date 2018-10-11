#Our job is to have the class somehow be able to keep track of all of the genres of all of the Books we create.
class Book
  attr_accessor :author, :page_count, :genre
  attr_reader :title

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre)
    @genre = genre
    GENRES << genre
  end 
end
