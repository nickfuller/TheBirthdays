class Gigs < ActiveRecord::Base
  attr_accessible :cost, :date, :venue
  validates_presence_of :date, :venue
end
