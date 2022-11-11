# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TestUser, type: :model do
  context 'must have an age greater than 21' do
    let(:user) { FactoryBot.create(:test_user) }
    it { expect(user.age).to be >= 21 }
  end
end
