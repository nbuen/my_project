class Store < ApplicationRecord
	validates :name, :address, :latitude, :longitude, presence: true
	validates :latitude, :longitude, numericality: true

	has_many :books
end
