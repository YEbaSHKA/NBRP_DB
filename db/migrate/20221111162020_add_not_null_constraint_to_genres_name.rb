# frozen_string_literal: true

class AddNotNullConstraintToGenresName < ActiveRecord::Migration[7.0]
  def change
    change_column :genres, :name, :string, null: false
  end
end
