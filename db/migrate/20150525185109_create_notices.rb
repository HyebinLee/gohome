class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.integer :num
      t.text :subject
      t.text :text
      t.string :name
      t.text :date

      t.timestamps null: false
    end
  end
end
