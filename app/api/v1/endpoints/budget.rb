module V1
  module Endpoints
    class Budget < Base
      before do
        doorkeeper_authorize!
      end

      desc 'Return a list of budgets.'
      namespace 'budgets' do
        get do
          current_user.budgets
        end

        desc 'Return a budget.'
        params do
          requires :id, type: Integer, desc: 'Budget id.'
        end
        route_param :id do
          get do
            current_user.budgets.find(params[:id])
          end
        end
      end
    end
  end
end
