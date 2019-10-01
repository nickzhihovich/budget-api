module V1
  class Category < Base
    namespace 'categories' do
      get do
        'Hello world.'
      end

      get :test do
        'Test endpoint.'
      end
    end
  end
end
