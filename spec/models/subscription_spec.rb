# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscription, type: :model do
  context 'associations' do
    it { should belong_to(:subscriber) }
    it { should belong_to(:book) }
  end

  describe 'validations' do
    it { should validate_presence_of(:start) }
    it { should validate_presence_of(:finish) }
  end
end
