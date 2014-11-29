class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @carts = Cart.all
    respond_with(@carts)
  end

  def show
    respond_with(@cart)
  end

  def new
    @cart = Cart.new
    respond_with(@cart)
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)
    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cart }
      else
        format.html { render action: 'new'}
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end 
  end

  def update
   @cart.update(cart_params)
    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully update.' }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end 
  end

  def destroy
     @cart.destroy
    respond_to do |format|
      format.html { redirect_to store_path }
      format.json { head :no_content }
    end
  end

  private
    def set_cart
      @cart = Cart.find(params[:id])
    end

    def cart_params
      params.require(:cart).permit(:user_id)
    end
end
