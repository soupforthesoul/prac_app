class SubProject < ActiveRecord::Base
  attr_accessible :description, :duration, :enddate, :name, :priority,  :startdate
  belongs_to :project 
  validates :name, :presence => true
  validates :project_id, :presence => true
  default_scope :order => 'sub_projects.created_at DESC'

end
