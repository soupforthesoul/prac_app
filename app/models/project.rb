class Project < ActiveRecord::Base
  attr_accessible :description, :duration, :enddate, :name, :priority, :startdate
  has_many :sub_projects, :dependent => :destroy
  has_many :tasks, :dependent => :destroy
end
