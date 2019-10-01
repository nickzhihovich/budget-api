require 'doorkeeper/grape/helpers'

module V1
  class Category < Base
    helpers Doorkeeper::Grape::Helpers

    before do
      doorkeeper_authorize!
    end

    namespace 'categories' do
      get do
        'Hello test.'
      end

      get :test do
        'Test endpoint.'
      end
    end
  end
end
