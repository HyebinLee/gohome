class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :num
      t.text :product
      t.text :subject
      t.text :text
      t.string :name
      t.text :date
      t.text :star

      t.timestamps null: false
    end
  end
end
