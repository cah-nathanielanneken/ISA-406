class AddSortIndexToRoombases < ActiveRecord::Migration
  def change
    add_column :roombases, :sort, :integer
  end
end
