require 'rails_helper'

RSpec.describe BalanceTransaction, type: :model do
  it { should have_many(:transactions) }
  it { should validate_length_of(:comment).is_at_most(80) }
end
