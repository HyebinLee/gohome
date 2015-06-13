class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.text :image
      t.text :type
      t.text :product
      t.text :price
      t.text :text
      t.integer :count
      t.integer :value

      t.timestamps null: false
    end
  end
end
