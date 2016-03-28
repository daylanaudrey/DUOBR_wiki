class AddTabelaIdToModel < ActiveRecord::Migration
  def change
    add_column :models, :tabela_id, :integer
  end
end
