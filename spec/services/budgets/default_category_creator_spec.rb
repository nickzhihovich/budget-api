require 'rails_helper'

describe Budgets::DefaultCategoryCreator do
  let(:budget) { create(:budget) }
  let(:expected_category_groups) do
    path_to_file = Rails.root.join('lib', 'settings', 'default_categories_groups.json')
    JSON.parse(File.read(path_to_file))
  end

  let(:expected_groups_titles) {expected_category_groups.map{|item| item['title']}}
  let(:count_of_categories) do
    expected_category_groups.map{|item| item['categories']}.flatten.count
  end

  before do
    described_class.new(budget).call
  end

  context 'check category groups' do
    it 'count' do
      expect(budget.category_groups.count).to eq(expected_category_groups.count)
    end

    it 'category_group titles' do
      expect(budget.category_groups.map(&:title)).to eq(expected_groups_titles)
    end

    it 'count of categories' do
      expect(budget.category_groups.map(&:categories).flatten.count).to eq(count_of_categories)
    end
  end
end
