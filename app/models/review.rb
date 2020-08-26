class Review < ApplicationRecord
	belongs_to :user
	validates :rating, presence: true
	validates :description, presence: true
	validates_inclusion_of :rating, :in => 0..5
	validates :rating, numericality: { only_integer: true }
end
