class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :sub_project
  attr_accessible :description, :duration, :name
end
