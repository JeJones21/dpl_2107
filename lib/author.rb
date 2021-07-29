class Author

  attr_reader :first_name,
              :last_name,
              :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(book, publication_date)
    #I need to create a book with the book class info...
    #I also need to add the book...

  end

  def add_book(book)
    @books << book 
  end
end
