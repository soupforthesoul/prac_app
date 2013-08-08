class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :sub_project
  attr_accessible :description, :duration, :name, :complete
  validates :name, :presence => true
  validates :duration, :numericality => { :greater_than_or_equal_to => 0 }
end
