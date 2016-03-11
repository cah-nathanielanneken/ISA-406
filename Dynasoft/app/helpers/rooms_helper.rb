module RoomsHelper
  def find_latest_rooms
    Room.uncached do
      Room.where(created_at: (1.hour.ago...Time.zone.now), activated: true, location: params[:location])
    end
  end

  def current_time_slot
    time = Time.now.hour
    if time < 11
      return "#{time}am to #{time+1}am"
    elsif time == 11
      return "#{time}am to #{time+1}pm"
    elsif time == 12
      return "#{time}pm to #{time-11}pm"
    elsif time == 23
      return "#{time-12}pm to #{time-11}am"
    elsif time == 24
      return "#{time-12}am to #{time-23}am"
    else
      return "#{time-12}pm to #{time-11}pm"
    end
  end

  def occupancy_greater_than_max(room)
    room_params[:occupancy] > room.maxOccupancy
  end

end
