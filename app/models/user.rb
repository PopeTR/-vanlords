class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :vans
         has_many :reviews, dependent: :destroy
         has_many :bookings
         has_one_attached :photo
         # validates :name, presence: true, uniqueness: true
         # validates :phone_number, presence: true, uniqueness: true
end
