ActiveAdmin.register Room do

  csv do    column :name
    column :location
    column :occupancy
    column :maxOccupancy
    column :created_at
    column('Hour') { |room| room.created_at.hour }
    column('Date') { |room| room.created_at.to_date }  end



end
