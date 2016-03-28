class AddProjectIdToTabela < ActiveRecord::Migration
  def change
    add_column :tabelas, :project_id, :integer
  end
end
