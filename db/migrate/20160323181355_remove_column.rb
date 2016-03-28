class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :tabelas, :type
  end
end
