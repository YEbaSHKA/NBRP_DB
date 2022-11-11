class Subscriber < ApplicationRecord
  validates :name, presence: { message: 'must be abided' }
end
