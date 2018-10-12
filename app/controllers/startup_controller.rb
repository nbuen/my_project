class StartupController < ApplicationController
  def index
  	@books = Book.order(:title).page params[:page]
  end
end
