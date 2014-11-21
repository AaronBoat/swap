class StoreController < ApplicationController
  def index
  	@accessories= Accessory.all
  end
end
