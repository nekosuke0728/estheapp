class CartProductsController < ApplicationController
  before_action :set_cart_product, only: [:show, :edit, :update, :destroy]

  def index
    @cart_products = CartProduct.all
  end

  def show
  end

  def new
    @cart_product = CartProduct.new
  end

  def edit
  end

  def create
    @cart_product = CartProduct.new(cart_product_params)
    if @cart_product.save
      redirect_to cart_products_path, notice: 'カート商品は正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @cart_product.update(cart_product_params)
      redirect_to cart_products_path, notice: 'カート商品は正常に作成されました' }
    else
      render :edit
      end
  end

  def destroy
    @cart_product.destroy
    redirect_to cart_products_path, notice: 'カート商品は正常に削除されました'
  end

  private

    def set_cart_product
      @cart_product = CartProduct.find(params[:id])
    end

    def cart_product_params
      params.require(:cart_product).permit(:cart_id, :product_id, :quantity, :status)
    end

end
