require 'rails_helper'

RSpec.describe MonthlyBudget, type: :model do
  it { should belong_to(:category) }
  it { should validate_presence_of(:amount_cents)}
  it { should validate_presence_of(:expenses_cents)}
  it { should validate_presence_of(:date)}
  it { should validate_presence_of(:category)}
end
