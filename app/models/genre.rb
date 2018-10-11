class Genre < ApplicationRecord
	validates :title, presence: true
	validates :title, uniqueness: true

	has_many :book_genres
	has_many :books, through: :book_genres
end
