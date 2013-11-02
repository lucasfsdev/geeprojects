class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :release_date
      t.integer :user_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
