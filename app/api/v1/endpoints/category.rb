module V1
  class Category < Base
    before do
      doorkeeper_authorize!
    end

    namespace 'categories' do
    end
  end
end
