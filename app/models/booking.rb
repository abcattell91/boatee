class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
<<<<<<< HEAD
  has_many :reviews
=======
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb

  validates :start_date, uniqueness: true, presence: true
  validates :end_date, uniqueness: true, presence: true

  validate :end_after_start
  validate :date_cannot_be_in_past

<<<<<<< HEAD
=======

>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
  private

  def end_after_start
    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def date_cannot_be_in_past
    if start_date < Date.today
      errors.add(:start_date, "cannot be in the past")
    end
  end
end
