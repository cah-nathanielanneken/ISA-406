module RoomactivitiesHelper

  def printTimeValue(time)
    if time < 12
      return "#{time}:00 am"
    elsif time == 12
      return "#{time}:00 pm"
    elsif time == 24
      return "#{time - 12}:00 am"
    else
      return "#{time - 12}:00 pm"
    end
  end

  def timeOptions
    timeRange = Array.new
    (1..24).each do |time|
      timeRange.push([printTimeValue(time), time])
    end
    return timeRange
  end

  
end
