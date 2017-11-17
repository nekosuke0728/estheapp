class OrderProductsController < ApplicationController
  before_action :set_order_product, only: [:show, :edit, :update, :destroy]

  def index
    @orderproducts = OrderProduct.all
  end

  def show
  end

  def new
    @orderproduct = OrderProduct.new
  end

  def edit
  end

  def create
    @orderproduct = OrderProduct.new(orderproduct_params)
    if @orderproduct.save
      redirect_to @order_product, notice: 'オーダー商品は正常に作成されました' }
    else
      render :new
    end
  end

  def update
    if @orderproduct.update(orderproduct_params)
      redirect_to @order_product, notice: 'オーダー商品は正常に作成されました' }
    else
      render :edit
    end
  end

  def destroy
    @order_product.destroy
    redirect_to order_products_url, notice: 'オーダー商品は正常に作成されました' }
  end

  private

    def set_orderproduct
      @order_product = OrderProduct.find(params[:id])
    end

    def orderproduct_params
      params.require(:order_product).permit(:order_id, :product_id, :quantity, :sub_total)
    end

end
