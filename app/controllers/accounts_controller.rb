class AccountsController < ApplicationController
  before_action :authenticate_staff!

  def users
    @users = User.all
  end

  def user_show
    
  end

  def staffs
    @staffs = Staff.all
  end

end
