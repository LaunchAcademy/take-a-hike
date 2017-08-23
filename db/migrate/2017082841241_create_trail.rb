class CreateTrail < ActiveRecord::Migration
  def up
    create_table :trails do |t|
      t.string :name, null: false
      t.integer :length, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal_code, null: false
    end
  end
end
