class Book
  attr_accessor :author, :page_count  # remove the attr_accessor for genre
  attr_reader :title, :genre  # add an attr_reader for genre

  # creating a bunch of books.
  # assigning each of those books a genre.
  #expecting our GENRES class constant to keep track of those genres
  #something else needs to happen in our genre= method. We need to somehow update our GENRES constant in that method.
  #genre= method (along with our genre method) is created by the following line of code: attr_accessor :genre. Since we want to add some customization to the method, we'll have to do three things:
  # 1-Explicitly define the genre= method, to integrate our class constant into the method
  # 2-Remove the attr_accessor for :genre since we no longer need to generate a reader AND a writer.
  # 3-Add an attr_reader for :genre, since we still want Ruby to generate a reader for us.
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


# => there is a constant, GENRES (we know it's a constant because it's written in all caps) that is defined within our Book class.
# =>    syntax, Book::GENRES tells us a couple of things. First, whenever we see ::, it indicates "name spacing". In other words, it tells us that the thing on the right side of the colons is a thing defined within the context, or name space, of the thing on the left side of the colons
# => Class Constants are available to all instances of a particular class. Whereas instance variables, i.e. title, author, etc., are individual to each instance of a class, class constants are shared among all instances. They all have access to the same data, and if that data should change for some reason, all instances will know about that change.

#define this constant. Since it's plural, I'm going to guess that it should be an array, so I'll start by defining it as an empty array

=begin
#class Book
  attr_accessor :author, :page_count, :genre
  attr_reader :title

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end
=end
