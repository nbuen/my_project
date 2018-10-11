class BooksController < ApplicationController
	def index
		@books = Book.all
		@genre = Genre.all
	end
end