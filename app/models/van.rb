class Van < ApplicationRecord
	belongs_to :user
	has_many :reviews, through: :bookings
	validates :availability, default: 1
	validates :description, presence: true
	validates :title, presence: true
	validates :price_per_night, presence: true
end
