class Album < ActiveRecord::Base
  attr_accessible :date, :title
  validates_presence_of :title
end
