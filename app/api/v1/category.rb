module V1
  class Category < Base
    before do
      doorkeeper_authorize!
    end

    namespace 'categories' do
      get do

      end

      get :test do
        'Test endpoint.'
      end
    end
  end
end
