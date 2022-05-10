class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :name, :docked, :location, :price, :berth, presence: true
  validates :boat_type, inclusion: { in: %w[Bracera Banana Boat Barge Dinghy Pedalo Punt Super Yacht Ship Catamaran Hovercraft] }
end
