class StoresController < ApplicationController
  def index
  	@stores = Store.order(:name)
  end
end
