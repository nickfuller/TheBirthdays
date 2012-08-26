class Fans < ActiveRecord::Base
  attr_accessible :email, :password, :name
  validates_presence_of :email, :password
end
