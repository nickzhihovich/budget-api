require 'rails_helper'

RSpec.describe Budget, type: :model do
  it { should have_many(:category_groups) }
  it { should have_many(:accounts) }
  it { should have_many(:monthly_budgets) }
  it { should belong_to(:user) }
  it { should validate_length_of(:name).is_at_most(30) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:user) }
end
