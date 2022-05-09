class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
