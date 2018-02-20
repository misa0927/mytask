class AddStatusToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :status, :integer, incomplete: 0
    add_index :projects, :status
  end
end
