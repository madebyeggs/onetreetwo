class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :brand, :string
    add_column :projects, :agency, :string
    add_column :projects, :type_of_work, :string
  end
end
