class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :fields, :type, :tipo
  end
end
