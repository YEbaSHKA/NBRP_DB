# frozen_string_literal: true

class Book < ApplicationRecord
  validates :name, uniqueness: { scope: :year, message: 'must be one per a year!' }, presence: true
end
