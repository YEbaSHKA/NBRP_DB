# frozen_string_literal: true

class CreateTestUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :test_users do |t|
      t.string :name
      t.integer :age
      t.date :born_at

      t.timestamps
    end
  end
end
