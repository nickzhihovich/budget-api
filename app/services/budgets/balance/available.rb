module Budgets
  module Balance
    class Available < Struct.new(:budget)
      def call
        deposit_accounts.map(&:amount_cents).sum
      end

      private

      def deposit_accounts
        budget.accounts.deposits
      end
    end
  end
end
