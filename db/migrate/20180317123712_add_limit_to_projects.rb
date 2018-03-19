class AddLimitToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :limit, :datetime
  end
end
