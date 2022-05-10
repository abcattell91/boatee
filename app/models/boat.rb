class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy

  BOAT_CATEGORIES = %w[Bracera Banana-Boat Barge Dinghy Pedalo Punt Yacht Ship Catamaran Hovercraft]
  validates :name, :location, :price, :image_url, presence: true
  validates :boat_type, inclusion: { in: BOAT_CATEGORIES }
  validates :image_url, presence: true, allow_blank: true
  validates :guests, inclusion: { in: 0..100 }, numericality: { only_integer: true }
  validates :docked, inclusion: [true, false]
end
