module V1
  module Endpoints
    class Category < Base
      before do
        doorkeeper_authorize!
      end

      namespace 'categories' do
      end
    end
  end
end
