# frozen_string_literal: true

class Subscription < ApplicationRecord
  belongs_to :subscriber
  belongs_to :book
  validates :start, presence: true
  validates :finish, presence: true
end
