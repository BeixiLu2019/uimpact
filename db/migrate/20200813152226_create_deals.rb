class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.string :buy_sell_indicator
      t.float :investment_amount
      t.date :trade_date
      t.date :settlement_date
      t.string :trade_status
      t.references :client, null: false, foreign_key: true
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
