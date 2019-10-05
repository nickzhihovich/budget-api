require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should belong_to(:category_group) }
  it { should have_many(:monthly_budgets) }
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:category_group)}
  it { should validate_length_of(:title).is_at_most(30)}
end
