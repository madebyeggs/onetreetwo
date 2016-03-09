class AddMusicToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :music, :string
  end
end
