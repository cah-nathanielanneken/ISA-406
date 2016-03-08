module RoomsHelper
  def find_latest_rooms
    Room.uncached do
      Room.where(created_at: (1.hour.ago...Time.zone.now), activated: true)
    end
  end
end
