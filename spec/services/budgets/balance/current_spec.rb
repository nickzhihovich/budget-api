require 'rails_helper'

describe Budgets::Balance::Current do
  let(:budget) { create(:budget) }
  let!(:deposit1) { create(:account, :deposit, budget: budget) }
  let!(:deposit2) { create(:account, :deposit, budget: budget) }
  let!(:credit) { create(:account, :credit, budget: budget) }
  let(:expected_balance) { deposit1.amount_cents + deposit2.amount_cents - credit.amount_cents }

  it 'calculates current_balance' do
    expect(described_class.new(budget).call).to eq(expected_balance)
  end
end
