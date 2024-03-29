module GoogleBooks

  class Adapter
    BASE_URL = 'https://www.googleapis.com/books/v1/volumes?q='

    attr_reader :author

    def initialize(author_name)
      author = Author.find_or_create_by(name: author_name)
      @author = author
    end

    def fetch_books
      # gets books from Google Books and
      # instantiates objects for each
      # and saves to database

      books = JSON.parse(RestClient.get(author_url))

      books['items'].each do |item|
        book = ::Book.new
        book.author_id = author.id
        book.title = item['volumeInfo']['title']
        book.snippet = item['volumeInfo']['description']

        book.save
      end
    end

    private

    def author_url(max_results = 20)
      "#{BASE_URL}#{author_sanitizer(author.name)}&maxResults=#{max_results}"
    end

    def author_sanitizer(author)
      author.gsub(/\W+/, '').downcase
    end
  end
end
