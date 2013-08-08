class SubProject < ActiveRecord::Base
  attr_accessible :description, :duration, :enddate, :name, :priority,  :startdate, :complete
  belongs_to :project 
  has_many :tasks, :dependent => :destroy
  validates :name, :presence => true
  validates :project_id, :presence => true
  default_scope :order => 'sub_projects.created_at DESC'
  validates :duration, :numericality => { :greater_than_or_equal_to => 0 }
end
