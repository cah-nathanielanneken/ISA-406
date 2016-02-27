class Room < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 150 }
  validates :occupancy, presence: true, length: { maximum: 50 }
  validates :location, presence: true, length: { maximum: 150 }
  validates :maxOccupancy, presence: true, length: { maximum: 50 }
end
