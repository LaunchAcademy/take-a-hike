class CreateTripParticipations < ActiveRecord::Migration
  def change
    create_table :trip_participations do |t|
      t.integer :trip_id, null: false
      t.integer :hiker_id, null: false
    end
  end
end
