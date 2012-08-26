class SwitchToDatetime < ActiveRecord::Migration
  
  def change
    change_column :Gigs, :date, :datetime
  end
  
end
