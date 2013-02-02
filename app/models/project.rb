class Project < ActiveRecord::Base
  attr_accessible :description, :duration, :enddate, :name, :priority, :startdate
end
