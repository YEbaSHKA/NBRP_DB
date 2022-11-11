# frozen_string_literal: true

class Genre < ApplicationRecord
  validates :name, presence: { message: 'must be abided' }, uniqueness: { message: 'must be unique!' }
end
