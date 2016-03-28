class AddTabelaIdToField < ActiveRecord::Migration
  def change
    add_column :fields, :tabela_id, :integer
  end
end
