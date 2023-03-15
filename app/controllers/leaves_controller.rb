class LeavesController < ApplicationController
  def index
    @leaves = Leave.all
  end

  def new
    @user = current_user
    @leave = Leave.new
  end

  def create
    binding.pry
    @user = current_user
    @leave = Leave.new(leave_params)
    if @leave.save
      redirect_to leaves_path
    else
      render.new
    end
  end
  def Show
    @leave = Leave.find(params[:id])
  end
  private
  def leave_params
    params.require(:leave).permit(:leave_type, :user_id,:total_allocate_leave, :used_leave)

  end

end
