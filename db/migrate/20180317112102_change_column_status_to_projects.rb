class ChangeColumnStatusToProjects < ActiveRecord::Migration
    # 変更内容
  def up
    change_column :projects, :status, :integer, null: false, default: 0
  end

  # 変更前
  def down
    change_column :projects, :status, :integer
  end
end
