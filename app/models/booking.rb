class Booking < ApplicationRecord
	belongs_to :user
	belongs_to :van
  has_many :reviews
	validates :start_date, presence: true
	validates :end_date, presence: true
	validates :total_price, presence: true
	validates :booking_status, presence: true
end
