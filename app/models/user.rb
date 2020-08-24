class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :vans
         has_many :reviews
         has_many :bookings
         # validates :name, presence: true
         # validates :phone_number, presence: true
         # validates :phone_number, uniqueness: true
         # validates :name, uniqueness: true
end
