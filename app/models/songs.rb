class Songs < ActiveRecord::Base
  attr_accessible :title
  validates_presence_of :title  #Q: What is this really doing? 
                                # Is it allowing the flash[:upload_fail] & flash[:update_fail]
                                # notices to work like they're supposed to?
  
end
