class AddColumnProjectidToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :projectid, :integer
  end
end
