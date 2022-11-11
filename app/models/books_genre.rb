# frozen_string_literal: true

class BooksGenre < ApplicationRecord
  belongs_to :book
  belongs_to :genre
  validates :book_id, presence: true
  validates :genre_id, presence: true
  validates :book_id, uniqueness: { scope: :genre_id }
end
