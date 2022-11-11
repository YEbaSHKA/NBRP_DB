# frozen_string_literal: true

class AddDefaultValueToSubscriptionsIsActive < ActiveRecord::Migration[7.0]
  def change
    change_column :subscriptions, :is_active, :boolean, default: true
  end
end
