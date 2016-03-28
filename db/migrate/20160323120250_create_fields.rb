class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.integer :type
      t.text :user_description
      t.text :technical_description
      t.integer :target_table

      t.timestamps null: false
    end
  end
end
