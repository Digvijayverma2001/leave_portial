class ChangeLeaveStatusToBeStringInUserLeaves < ActiveRecord::Migration[5.2]
  def change
    change_column :user_leaves, :leave_status, :string
  end
end
