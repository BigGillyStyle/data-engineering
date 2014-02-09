class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :Purchaser, index: true
      t.references :Product, index: true
      t.references :Merchant, index: true
      t.references :Order, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
