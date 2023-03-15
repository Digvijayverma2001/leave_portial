class RemoveTimeFromLeaves < ActiveRecord::Migration[5.2]
  def change
    remove_column :leaves, :time, :datetime
  end
end
