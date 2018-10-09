class Book
  attr_accessor :author, :page_count  # remove the attr_accessor for genre
  attr_reader :title, :genre  # add an attr_reader for genre

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  # create the writer for genre and add the logic for the class constant
 def genre=(genre)
   @genre = genre
   GENRES << genre
 end

end


# **

  # creating a bunch of books & assigning each of those books a genre :
  #expecting our GENRES class constant to keep track of those genres
  #something else needs to happen in our genre= method. We need to somehow update our GENRES constant in that method.
  #genre= method (along with our genre method) is created by the following line of code:  
  # => attr_accessor :genre
  #Since we want to add some customization to the method, we'll have to do three things:
    # 1-Explicitly define the genre= method, to integrate our class constant into the method
    # 2-Remove the attr_accessor for :genre since we no longer need to generate a reader AND a writer.
    # 3-Add an attr_reader for :genre, since we still want Ruby to generate a reader for us.
