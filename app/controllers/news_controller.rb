class NewsController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  def index
    @news = News.all
  end

  def show
  end

  def new
    @news = News.new
  end

  def edit
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to news_index_path, notice: 'ニュース投稿は正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @news.update(news_params)
      redirect_to news_index_path, notice: 'ニュース投稿は正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @news.destroy
    redirect_to news_index_path, notice: 'ニュース投稿は正常に削除されました'
  end

  private

    def set_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:news_type_id, :content, :state)
    end

end
