class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :occupancy, default: 0
      t.string :location
      t.integer :maxOccupancy
      t.string :editor
      t.boolean :activated, default: true

      t.timestamps null: false
    end

  end
end
