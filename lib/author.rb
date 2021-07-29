class Author

  attr_reader :first_name,
              :last_name,
              :books,
              :title

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
    # @title = title
  end

  def name
    @first_name + " " + @last_name
  end

  def add_book(book)
    @books << book
  end

  def write(title, publication_date)
    #I need to create a book with the book class info...
    #I also need to add the book...
    #let's break this bad boy down...
    #A book was a hash in the book class...
    #I don't know if this route was conventional but I think it is working...
    #I guess I could initialize a book...
    #Ignore my notes, I need these for studying.
    #Instance of book use to be_a
    #Book object use to eq
    write_book = {
      "author_first_name": @first_name,
      "author_last_name": @last_name,
      "title": title,
      "publication_date": publication_date
    }
      book = Book.new(write_book)
      add_book(book)
      return book
  end


end
