class Book < ApplicationRecord
	validates :title, :author, :genre_name, presence: true
  	validates :title, uniqueness: true

  	has_many :book_genres
	has_many :genres, through: :book_genres
	has_many :reviews
end
