class CategoriesController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: 'カテゴリは正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: 'カテゴリは正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: 'カテゴリは正常に削除されました'
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end
