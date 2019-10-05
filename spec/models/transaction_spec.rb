require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { should belong_to(:transactinable) }
  it { should validate_presence_of(:amount_cents)}
  it { should validate_presence_of(:date)}
  it { should validate_presence_of(:transactinable_type)}
  it { should validate_presence_of(:transactinable_id)}
end
