class RemoveAvailableLeaveFromLeaves < ActiveRecord::Migration[5.2]
  def change
    remove_column :leaves, :available_leave, :string
  end
end
