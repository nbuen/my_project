class StartupController < ApplicationController
  def index
  	@books = Book.where(["title LIKE ?", "%#{params[:search]}%"]).order(:title).page params[:page]
  end
end
