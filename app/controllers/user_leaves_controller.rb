class UserLeavesController < ApplicationController

  def index
     @user_leaves = UserLeave.all
  end

  def new
    @user = current_user
    @user_leave = UserLeave.new
  end


  def create
  #   binding.pry



    @user_leave = UserLeave.new(user_leave_params)
    if @user_leave.save
      redirect_to user_leaves_path
    else
      render.new
    end
  end


  def show
    @user_leave = UserLeave.find(params[:id])
  end



  def destroy
    @user_leave = UserLeave.find(params[:id])
    @user_leave.destroy
    redirect_to user_leaves_path

  end


  private

    def user_leave_params
      params.required(:user_leave).permit(:leave_status,  :leave_id, :no_of_leave)
    end


end
