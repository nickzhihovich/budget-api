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

  context 'default categories creation' do
    let(:expected_category_groups) do
      path_to_file = Rails.root.join('lib', 'settings', 'default_categories_groups.json')
      JSON.parse(File.read(path_to_file))
    end

    let(:count_of_categories) do
      expected_category_groups.map{|item| item['categories']}.flatten.count
    end

    let(:budget) { described_class.new(user: user, params: {name: budget_name }).call }

    it 'count of category groups' do
      expect(budget.category_groups.count).to eq(expected_category_groups.count)
    end

    it 'count of categories' do
      expect(budget.category_groups.map(&:categories).flatten.count).to eq(count_of_categories)
    end
  end
end
