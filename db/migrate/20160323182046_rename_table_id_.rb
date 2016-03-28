class RenameTableId < ActiveRecord::Migration
  def change
  	rename_column :table_areas, :table_id, :tabela_id
  end
end
