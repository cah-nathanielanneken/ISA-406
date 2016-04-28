class RemoveDefaultValue < ActiveRecord::Migration
  def change
    change_column :rooms, :occupancy, :integer, :default => nil
  end
end
