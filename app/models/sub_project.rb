class SubProject < ActiveRecord::Base
  attr_accessible :description, :duration, :enddate, :name, :priority,  :startdate, :complete
  belongs_to :project 
  has_many :tasks, :dependent => :destroy
  validates :name, :presence => true
  validates :project_id, :presence => true
  default_scope :order => 'sub_projects.created_at DESC'

end
