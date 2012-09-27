class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :status_id
      t.datetime :due_date
      t.integer :project_id
      t.text :notes
      t.integer :priority_id
      t.string :browser_version

      t.timestamps
    end
  end
end
