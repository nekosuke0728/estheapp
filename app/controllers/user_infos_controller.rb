class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:show, :new, :edit, :create, :update]

  def show
    @user = current_user
  end

  def new
    @user = current_user
    @user_info = UserInfo.new
  end

  def edit
    @user = current_user
  end

  def create
    @user_info = UserInfo.new(user_info_params)
    if @user_info.save
      redirect_to user_info_path(@user_info.id)
    else
    end
  end

  def update
    @user = current_user
    if @user_info.update(user_info_params)
      redirect_to user_info_path(@user_info.id)
    else
    end
  end

  private

    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    def user_info_params
      params.require(:user_info).permit(:user_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :phone, :birthday, :zipcode, :prefecture_name, :address)
    end

end
