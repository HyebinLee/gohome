class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :userid
      t.text :birth
      t.text :userpwd
      t.text :address

      t.timestamps null: false
    end
  end
end
