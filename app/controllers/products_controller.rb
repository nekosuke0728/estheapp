class ProductsController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: '商品は正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to products_path, notice: '商品は正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: '商品は正常に削除されました'
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :brand_id, :category_id, :price, :description, :status, :item_type_id)
    end

end
