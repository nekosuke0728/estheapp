class UserInfosController < ApplicationController
  before_action :set_user, only: [:new, :show, :edit, :update]
  before_action :set_user_info, only: [:edit, :update]
  before_action :authenticate_user!, only: [:show, :new, :edit, :create, :update]

  def show
    unless current_user.user_info.nil?
      @user_info = UserInfo.find(params[:id])
    end
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
    if @user_info.update(user_info_params)
      redirect_to root_path
    else
    end
  end

  private

    def set_user
      @user = current_user
    end

    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    def user_info_params
      params.require(:user_info).permit(:user_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :phone, :birthday, :zipcode, :prefecture_name, :address)
    end

end
