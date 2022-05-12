class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
<<<<<<< HEAD
  has_many :reviews, dependent: :destroy
  has_many :boats, dependent: :destroy

=======
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
