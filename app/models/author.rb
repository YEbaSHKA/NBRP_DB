# frozen_string_literal: true

class Author < ApplicationRecord
  validates :name, presence: { message: 'must be abided' }
end
