class CreateMarketData < ActiveRecord::Migration[6.0]
  def change
    create_table :market_data do |t|
      t.date :cob_date
      t.float :market_price
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
