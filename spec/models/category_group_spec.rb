require 'rails_helper'

RSpec.describe CategoryGroup, type: :model do
  it { should belong_to(:budget) }
  it { should have_many(:categories) }
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:budget)}
  it { should validate_length_of(:title).is_at_most(30)}
end
