class BookController < ApplicationController
  def index
  	@book = Book.find(params[:id])
  end
end
