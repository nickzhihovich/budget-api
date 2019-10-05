require 'rails_helper'

RSpec.describe Account, type: :model do
  it { should belong_to(:budget) }
  it { should validate_presence_of(:amount_cents) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:budget) }
  it { should validate_presence_of(:type) }
end
