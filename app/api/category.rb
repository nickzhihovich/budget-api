class Category < Base
  before do
    doorkeeper_authorize!
  end

  namespace 'categories' do
    get do
      "Hello #{current_user.email}."
    end

    get :test do
      'Test endpoint.'
    end
  end
end
