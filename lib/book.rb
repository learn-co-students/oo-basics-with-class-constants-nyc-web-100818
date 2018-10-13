class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre
  GENRES = [] # a constant (bc it's all caps)
    # constants are avail to all instances of a particular class

    def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre) # adding customization to this method
    @genre = genre
    GENRES << genre # shovel into GENRES WHEN the genre is assigned 
  end
end
