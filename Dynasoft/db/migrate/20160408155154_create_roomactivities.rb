class CreateRoomactivities < ActiveRecord::Migration
  def change
    create_table :roomactivities do |t|
      t.integer :begin
      t.integer :end
      t.string :room

      t.timestamps null: false
    end
  end
end
