class Room < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 150 }
  validates :occupancy, presence: true, length: { maximum: 50 }
  validates :location, presence: true, length: { maximum: 150 }
  validates :maxOccupancy, presence: true, length: { maximum: 50 }

  def self.generateNewRoomOnTheHour
      (Roombase.all).each do |room|
	isDeactive = false
	time = Time.now.hour
	(Roomactivity.where(room: room.name)).each do |activity|
	  if (activity.begin <= time && activity.end > time) || (activity.begin > time && 			activity.end > time && (activity.begin - activity.end) < 0)
	    isDeactive = true
	  end
	end
	if !isDeactive && room.activated?
          @roomCopy = Room.new(name: room.name, location: room.location,
                             maxOccupancy: room.maxOccupancy, occupancy: 0, editor: nil)
          @roomCopy.save
	end
      end
  end

end
