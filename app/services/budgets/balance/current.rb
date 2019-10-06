module Budgets
  module Balance
    class Current < Struct.new(:budget)
      def call
        sum_of_amounts(deposit_accounts) - sum_of_amounts(credit_accounts)
      end

      private

      def sum_of_amounts(accounts)
        accounts.map(&:amount_cents).sum
      end

      def deposit_accounts
        budget.accounts.deposits
      end

      def credit_accounts
        budget.accounts.credits
      end
    end
  end
end
