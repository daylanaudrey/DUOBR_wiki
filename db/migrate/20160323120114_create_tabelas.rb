class CreateTabelas < ActiveRecord::Migration
  def change
    create_table :tabelas do |t|
      t.string :name
      t.integer :type

      t.timestamps null: false
    end
  end
end
