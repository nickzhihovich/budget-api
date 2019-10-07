module V1
  module Endpoints
    class Budget < Base
      before do
        doorkeeper_authorize!
      end

      namespace 'budgets' do
        get do
          current_user.budget
        end

        get :id do
          user.budgets.find(params[:id])
        end
      end
    end
  end
end

