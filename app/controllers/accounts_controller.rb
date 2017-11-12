class AccountsController < ApplicationController
  before_action :authenticate_staff!

  def users
    @users = User.all
  end

  def user_show
    @user = User.find(params[:id])
  end

  def staffs
    @staffs = Staff.all
  end

  def staff_show
    @user = User.find(params[:id])
  end

end
