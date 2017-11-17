class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def index
    @carts = Cart.all
  end

  def show
  end

  def new
    @cart = Cart.new
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      redirect_to carts_path, notice: 'カートは正常に作成されました'
    else
      render :new 
    end
  end

  def update
    if @cart.update(cart_params)
      format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
    else
      render :edit
    end
  end

  def destroy
    @cart.destroy
    redirect_to carts_path, notice: 'カートは正常に削除されました'
  end

  private

    def set_cart
      @cart = Cart.find(params[:id])
    end

    def cart_params
      params.require(:cart).permit(:user_id)
    end

end
