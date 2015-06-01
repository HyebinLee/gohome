class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.text :image
      t.text :product
      t.text :price
      t.integer :num

      t.timestamps null: false
    end
  end
end
