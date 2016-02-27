class CreateRoombases < ActiveRecord::Migration
  def change
    create_table :roombases do |t|
      t.string :name
      t.string :location
      t.integer :maxOccupancy
      t.boolean :activated, default: true

      t.timestamps null: false
    end
  end
end
