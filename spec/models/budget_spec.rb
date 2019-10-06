require 'rails_helper'

RSpec.describe Budget, type: :model do
  it { should have_many(:category_groups) }
  it { should have_many(:accounts) }
  it { should have_many(:monthly_budgets) }
  it { should belong_to(:user) }
  it { should validate_length_of(:name).is_at_most(30) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:user) }

  describe '#balance' do
    let(:budget) { create(:budget) }
    let!(:deposit1) { create(:account, :deposit, budget: budget) }
    let!(:deposit2) { create(:account, :deposit, budget: budget) }
    let!(:credit) { create(:account, :credit, budget: budget) }
    let(:expected_balance) { deposit1.amount_cents + deposit2.amount_cents - credit.amount_cents }

    it 'calculates sum of transitions' do
      expect(budget.current_balance).to eq(expected_balance)
    end
  end
end
