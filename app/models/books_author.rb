# frozen_string_literal: true

class BooksAuthor < ApplicationRecord
  belongs_to :book
  belongs_to :author
  validates :book, presence: true
  validates :author, presence: true
  validates :book, uniqueness: { scope: :author }
end
