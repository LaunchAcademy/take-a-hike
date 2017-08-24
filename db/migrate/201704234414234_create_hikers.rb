class CreateHikers < ActiveRecord::Migration
  def change
    create_table :hikers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :experience_level
    end
  end
end
