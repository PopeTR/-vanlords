class Van < ApplicationRecord
	belongs_to :user
	has_many :reviews, through: :bookings, dependent: :destroy
	validates :availability, presence: true
	validates :description, presence: true
	validates :title, presence: true
	validates :price_per_night, presence: true
end
