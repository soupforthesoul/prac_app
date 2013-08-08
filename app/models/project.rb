class Project < ActiveRecord::Base
  attr_accessible :description, :duration, :enddate, :name, :priority, :startdate, :complete
  has_many :sub_projects, :dependent => :destroy
  has_many :tasks, :dependent => :destroy
  validates :name, :presence => true
  validates :duration, :numericality => { :greater_than_or_equal_to => 0 }
end
