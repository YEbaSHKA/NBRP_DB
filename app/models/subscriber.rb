# frozen_string_literal: true

class Subscriber < ApplicationRecord
  validates :name, presence: { message: 'must be abided' }
end
