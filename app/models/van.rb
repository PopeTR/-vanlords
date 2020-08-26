class Van < ApplicationRecord
	belongs_to :user
  has_many :bookings
	has_many :reviews, through: :bookings
  has_one_attached :photo
	validates :availability, presence: true
	validates :description, presence: true
	validates :title, presence: true
	validates :price_per_night, presence: true
	validates :size, presence: true
	validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
