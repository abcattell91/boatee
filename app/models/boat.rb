class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy

  BOAT_CATEGORIES = %w[Bracera Banana-Boat Barge Dinghy Pedalo Punt Yacht Ship Catamaran Hovercraft]
  validates :name, :location, :price, :image_url, presence: true
  validates :boat_type, inclusion: { in: BOAT_CATEGORIES }
  validates :image_url, presence: true, allow_blank: true, format: { with: /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-=\?]*)*\/?/ }
<<<<<<< HEAD
  validates :guests, inclusion: { in: 0..100 }, numericality: { only_integer: true }
=======
  validates :guests, inclusion: { in: 0..100 }, numericality: { only: true }
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
  validates :docked, inclusion: [true, false]

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
<<<<<<< HEAD
    end
  end
=======
  end
 end
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
end
