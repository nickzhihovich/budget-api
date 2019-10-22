require 'rails_helper'

RSpec.describe CategoryGroup, type: :model do
  it { should have_many(:categories) }
  it { should validate_presence_of(:title)}
  it { should validate_length_of(:title).is_at_most(30)}
  it { should validate_uniqueness_of(:title).scoped_to(:budget_id)}
end
