class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.references :project
      t.references :sub_project

      t.timestamps
    end
    add_index :tasks, :project_id
    add_index :tasks, :sub_project_id
  end
end
