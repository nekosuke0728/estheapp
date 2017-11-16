class ReservationsController < ApplicationController
  before_action :authenticate_staff!, only: [:index, :show]
  # before_action :authenticate_user!, only: [:user_show]
  before_action :authenticate_all, only: [:new, :edit, :update, :destroy] # :user_show
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def show
  end

  def new
    @user = current_user
    @reservation = Reservation.new
  end

  def edit
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to @reservation, notice: '予約は正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to @reservation, notice: '予約は正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @reservation.destroy
    redirect_to root_path, notice: '予約は正常に削除されました' # userとstaffで分ける
  end

  private

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:user_id, :staff_id, :esthe_menu_id, :start_at, :comment)
    end

    def authenticate_all
      user_signed_in? || staff_signed_in?
    end

end
