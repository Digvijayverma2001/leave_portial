class Admin::UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = current_user

    @user_leave = UserLeave.new
  end

  def create
  end


end
