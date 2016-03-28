class AddColumnDescToModels < ActiveRecord::Migration
  def change
    add_column :models, :user_description, :text
    add_column :models, :technical_description, :text
  end
end
