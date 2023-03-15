class RemoveLastNameFromLeaves < ActiveRecord::Migration[5.2]
  def change
    remove_column :leaves, :last_name, :string
  end
end
