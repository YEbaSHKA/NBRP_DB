# frozen_string_literal: true

json.extract! subscriber, :id, :name, :created_at, :updated_at
json.url subscriber_url(subscriber, format: :json)
