class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.text :name
      t.text :uid
      t.text :birth
      t.text :pwd
      t.text :address

      t.timestamps null: false
    end
  end
end
