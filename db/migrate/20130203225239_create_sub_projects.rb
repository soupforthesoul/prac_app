class CreateSubProjects < ActiveRecord::Migration
  def change
    create_table :sub_projects do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.date :startdate
      t.date :enddate
      t.integer :priority
      t.integer :project_id

      t.timestamps
    end
    add_index :sub_projects, :project_id
  end

  
end
