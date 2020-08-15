class ChangeTransactionDateToBeDatetimeInAccountTransactions < ActiveRecord::Migration[6.0]
  def change
    change_column :account_transactions, :transaction_date, :datetime
  end
end
