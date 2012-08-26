class ChangeAlbumsDateToDate < ActiveRecord::Migration

  def change
    change_column :albums, :date, :date
  end

end
