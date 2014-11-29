class AccessoryItemsController < ApplicationController
  before_action :set_accessory_item, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @accessory_items = AccessoryItem.all
  end

  def shows
  end

  def new
    @accessory_item = AccessoryItem.new
  end

  def edit
  end

  def create
    @accessory_item = @cart.accessory_items.find_or_initialize_by_movie_id(accessory_id: params[:accessory_id],:quantity=>0 )
    @accessory_item.quantity += 1
    respond_to do |format|
      if @accessory_item.save
        format.html { redirect_to @accessory_item.cart, notice: "#{@accessory_item.accessory.item} was successfully added to cart." }
        format.json { render action: 'show', status: :created, location: @accessory_item }     
      else
        format.html { render action: 'new' }
        format.json { render json: @accessory_item.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    @accessory_item = AccessoryItem.find(params[:id])
    respond_to do |format|
      if params[:accessory_item][:quantity].to_i == 0
        @accessory_item.destroy
        format.html { redirect_to @accessory_item.cart, notice: "#{@accessory_item.accessory.item} removed"}
        format.json { head :no_content }
      elsif @accessory_item.update(accessory_item_params),
        format.html { redirect_to @accessory_item.cart, notice: "#{@accessory_item.accessory.item} successfully updated by #{@accessory_item.quantity}." }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accessory_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @accessory_item.destroy
    respond_to do |format|
      format.html { redirect_to @accessory_item.cart } 
      format.json { head :no_content}
    end
  end

  private
    def set_accessory_item
      @accessory_item = AccessoryItem.find(params[:id])
    end

    def accessory_item_params
      params.require(:accessory_item).permit(:accessory_id, :cart_id, :quantity)
    end
end
