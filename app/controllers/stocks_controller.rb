class StocksController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_stock, only: [:show, :edit, :update, :destroy]

  def index
    @stocks = Stock.all
  end

  def show
  end

  def new
    @stock = Stock.new
    @stock.in_status = true
  end

  def edit
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to stocks_path, notice: '在庫は正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @stock.update(stock_params)
      redirect_to stocks_path, notice: '在庫は正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @stock.destroy
    redirect_to stocks_path, notice: '在庫は正常に削除されました'
  end

  private

    def set_stock
      @stock = Stock.find(params[:id])
    end

    def stock_params
      params.require(:stock).permit(:product_id, :date, :quantity, :in_status)
    end

end
