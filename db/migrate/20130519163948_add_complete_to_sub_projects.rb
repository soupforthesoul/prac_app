class AddCompleteToSubProjects < ActiveRecord::Migration
  def change
    add_column :sub_projects, :complete, :boolean
  end
end
