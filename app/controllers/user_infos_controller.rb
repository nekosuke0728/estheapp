class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update]
  before_action :authenticate_staff!, only: [:index]
  before_action :authenticate_all, only: [:show, :new, :edit, :create, :update]

  def index
    @user_infos = UserInfo.all
  end

  def show
  end

  def new
    @user_info = UserInfo.new
  end

  def edit
  end

  def create
    @user_info = UserInfo.new(user_info_params)
    if @user_info.save
      redirect_to root_path
    else
    end
  end

  def update
    @user_info = current_user.user_info
    if @user_info.update(user_info_params)
      redirect_to root_path
    else
    end
  end

  private

    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    def authenticate_all
      user_signed_in? || staff_signed_in?
    end

    def user_info_params
      params.require(:user_info).permit(:user_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :phone, :birthday, :zipcode, :prefecture_name, :address)
    end

end
