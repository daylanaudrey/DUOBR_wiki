class RenameFks < ActiveRecord::Migration
  def change
  	rename_column :table_areas, :id_tabela, :table_id
  	rename_column :table_areas, :id_area, :area_id
  end
end
