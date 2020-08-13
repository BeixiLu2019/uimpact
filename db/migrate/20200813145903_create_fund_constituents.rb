class CreateFundConstituents < ActiveRecord::Migration[6.0]
  def change
    create_table :fund_constituents do |t|
      t.string :fund_constituent_name
      t.string :asset_class

      t.timestamps
    end
  end
end
