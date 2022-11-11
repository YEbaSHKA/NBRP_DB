# frozen_string_literal: true

require 'factory_bot'

FactoryBot.define do
  factory :test_user do
    name { 'MyString' }
    age { 21 }
    born_at { '2022-11-11' }
  end
end
