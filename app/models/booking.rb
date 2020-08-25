class Booking < ApplicationRecord
	belongs_to :users
	belongs_to :vans
	validates :start_date, presence: true
	validates :end_date, presence: true
	validates :total_price, presence: true
	validates :booking_status, presence: true
end
