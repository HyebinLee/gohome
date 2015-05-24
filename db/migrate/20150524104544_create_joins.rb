class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.text :name
      t.text :uid
      t.integer :year
      t.integer :month
      t.integer :day
      t.text :pwd
      t.text :re_pwd
      t.text :address

      t.timestamps null: false
    end
  end
end
