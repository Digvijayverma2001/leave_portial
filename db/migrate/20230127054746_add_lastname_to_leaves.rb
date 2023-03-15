class AddLastnameToLeaves < ActiveRecord::Migration[5.2]
  def change
    add_column :leaves, :last_name, :string
  end
end
