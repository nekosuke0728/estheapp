class NewsTypesController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_news_type, only: [:show, :edit, :update, :destroy]

  def index
    @news_types = NewsType.all
    if params[:id].present?
      set_news_type
    else
      @news_type = NewsType.new
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @news_type = NewsType.new(news_type_params)
    if @news_type.save
      redirect_to news_types_path, notice: 'ニュースタイプは正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @news_type.update(news_type_params)
      redirect_to news_types_path, notice: 'ニュースタイプは正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @news_type.destroy
    redirect_to news_types_path, notice: 'ニュースタイプは正常に削除されました'
  end

  private

    def set_news_type
      @news_type = NewsType.find(params[:id])
    end

    def news_type_params
      params.require(:news_type).permit(:name)
    end

end
