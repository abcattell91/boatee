class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :name, :boat_type, :docked, :location, :price, :berth, presence: true
end
