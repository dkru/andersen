class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.decimal :value
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
