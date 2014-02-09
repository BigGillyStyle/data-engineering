class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :purchaser, index: true
      t.references :merchant, index: true
      t.references :order, index: true
      t.references :product, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
