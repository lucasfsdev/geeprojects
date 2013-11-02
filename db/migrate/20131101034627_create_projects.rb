class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :release_date
      t.integer :created_by_user
      t.integer :enterprise

      t.timestamps
    end
  end
end
