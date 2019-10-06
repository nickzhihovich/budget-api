module Budgets
  class Creator
    def initialize(user:, params:)
      @user = user
      @params = params
    end

    def call
      budget = Budget.create(created_params)
      create_default_categories(budget) if budget.valid?
      budget
    end

    private

    attr_reader :user, :params

    def created_params
      {
        name: params[:name],
        user_id: user.id
      }
    end

    def create_default_categories(budget)
      Budgets::DefaultCategoryCreator.new(budget).call
    end
  end
end
