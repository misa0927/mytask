class AddStatusToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :status, :integer
    add_index :projects, :status
  end
end
