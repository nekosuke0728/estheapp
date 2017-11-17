class BrandsController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  def index
    @brands = Brand.all
    if params[:id].present?
      set_brand
    else
      @brand = Brand.new
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brands_path, notice: 'ブランドは正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @brand.update(brand_params)
      redirect_to brands_path, notice: 'ブランドは正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_path, notice: 'ブランドは正常に削除されました'
  end

  private

    def set_brand
      @brand = Brand.find(params[:id])
    end

    def brand_params
      params.require(:brand).permit(:name)
    end
    
end
