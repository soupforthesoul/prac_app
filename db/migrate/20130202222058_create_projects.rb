class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.date :startdate
      t.date :enddate
      t.integer :priority

      t.timestamps
    end
  end
end
