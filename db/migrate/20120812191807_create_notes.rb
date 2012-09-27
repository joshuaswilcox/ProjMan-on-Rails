class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.text :body
      t.integer :group_id

      t.timestamps
    end
  end
end
