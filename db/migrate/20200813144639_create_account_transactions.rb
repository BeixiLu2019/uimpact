class CreateAccountTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :account_transactions do |t|
      t.string :in_out_indicator
      t.float :cash_amount
      t.date :transaction_date
      t.string :transaction_reference
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
