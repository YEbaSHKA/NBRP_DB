# frozen_string_literal: true

json.array! @books_authors, partial: 'books_authors/books_author', as: :books_author
