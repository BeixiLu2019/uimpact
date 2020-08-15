class ChangeTradeDateToBeDatetimeInDeals < ActiveRecord::Migration[6.0]
  def change
    change_column :deals, :trade_date, :datetime
  end
end
