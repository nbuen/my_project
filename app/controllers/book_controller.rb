class BookController < ApplicationController
  def index
  	@book = Book.find(params[:id])
  	book = @book.title
  	@reviews = Review.where(["book_title = '#{book}'"])
  end
end
