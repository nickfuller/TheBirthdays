class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :date
      t.string :venue
      t.string :cost

      t.timestamps
    end
  end
end
