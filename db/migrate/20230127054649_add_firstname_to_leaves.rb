class AddFirstnameToLeaves < ActiveRecord::Migration[5.2]
  def change
    add_column :leaves, :first_name, :string
  end
end
