class RemoveFirstNameFromLeaves < ActiveRecord::Migration[5.2]
  def change
    remove_column :leaves, :first_name, :string
  end
end
