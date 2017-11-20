class Staff::CategoriesController < ApplicationController
  # before_action :authenticate_staff!
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.order(:created_at => :desc)

    if params[:id].present?
      set_category
    else
      @category = Category.new
    end

  end

  # def show
  # end

  # def new
  #   @category = Category.new
  # end

  # def edit
  # end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      @categories = Category.order(:created_at)
      render :index
    end
  end

  def update
    if @category.update(category_params)
      render json: {:status => "ok"}
    else
      render json: {:status => "残念"}
    end
  end

  def destroy
    if @category.destroy
      render json: {:status => "ok"}
    else 
      render json: {:status => "残念"}
    end

  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end
