class CreateTableAreas < ActiveRecord::Migration
  def change
    create_table :table_areas do |t|
      t.integer :id_tabela
      t.integer :id_area

      t.timestamps null: false
    end
  end
end
