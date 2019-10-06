require 'rails_helper'

describe Budgets::Balance::Available do
  let(:budget) { create(:budget) }
  let!(:deposit1) { create(:account, :deposit, budget: budget) }
  let!(:deposit2) { create(:account, :deposit, budget: budget) }
  let(:expected_balance) { deposit1.amount_cents + deposit2.amount_cents }

  it 'calculates available_balance' do
    expect(described_class.new(budget).call).to eq(expected_balance)
  end
end
