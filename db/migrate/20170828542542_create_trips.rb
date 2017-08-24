class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.date :started_on, null: false
      t.date :ended_on
      t.integer :trail_id, null: false
    end
  end
end
