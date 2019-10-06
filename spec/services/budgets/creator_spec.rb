require 'rails_helper'

describe Budgets::Creator do
  let(:user) { create(:user) }
  let(:budget_name) { Faker::Internet.slug }

  context 'when valid' do
    it 'creates budget' do
      expect do
        described_class.new(user: user, params: {name: budget_name}).call
      end.to change(Budget, :count).by(1)
    end
  end

  context 'when invalid' do
    it 'user is not passed' do
      expect do
        described_class.new(user: nil, params: {name: budget_name}).call
      end.to change(Budget, :count).by(0)
    end

    it 'budget name is not passed' do
      expect do
        described_class.new(user: user, params: {}).call
      end.to change(Budget, :count).by(0)
    end

    it 'budget name and user are not passed' do
      expect do
        described_class.new(user: nil, params: {}).call
      end.to change(Budget, :count).by(0)
    end
  end
end
