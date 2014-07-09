class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :count
      t.references :item, index: true
      t.references :purchaser, index: true

      t.timestamps
    end
  end
end
