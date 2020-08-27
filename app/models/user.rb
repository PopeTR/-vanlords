class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_many :vans
  has_many :booked_vans, through: :vans, source: :bookings, class_name: "Booking"
  has_many :guests, through: :booked_vans, source: :user, class_name: "User"
  has_many :reviews, dependent: :destroy
  has_many :bookings
  has_one_attached :photo
end
