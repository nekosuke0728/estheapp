class PaymentsController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  def index
    @payments = Payment.all
  end

  def show
  end

  def new
    @payment = Payment.new
  end

  def edit
  end

  def create
    @payment = Payment.new(payment_params)
    if @payment.save
      redirect_to payments_path, notice: '支払方法は正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @payment.update(payment_params)
      redirect_to payments_path, notice: '支払方法は正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @payment.destroy
    redirect_to payments_path, notice: '支払方法は正常に削除されました'
  end

  private

    def set_payment
      @payment = Payment.find(params[:id])
    end

    def payment_params
      params.require(:payment).permit(:name)
    end

end
