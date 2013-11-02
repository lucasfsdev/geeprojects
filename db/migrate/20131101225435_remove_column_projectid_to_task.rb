class RemoveColumnProjectidToTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :project_id, :string
  end
end
