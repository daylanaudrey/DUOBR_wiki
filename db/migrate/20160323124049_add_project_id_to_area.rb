class AddProjectIdToArea < ActiveRecord::Migration
  def change
    add_column :areas, :project_id, :integer
  end
end
