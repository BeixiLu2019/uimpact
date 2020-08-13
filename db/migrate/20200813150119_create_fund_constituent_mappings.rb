class CreateFundConstituentMappings < ActiveRecord::Migration[6.0]
  def change
    create_table :fund_constituent_mappings do |t|
      t.references :fund, null: false, foreign_key: true
      t.references :fund_constituent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
