class CreateUserLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :user_leaves do |t|
      t.integer :leave_status
      t.integer :no_of_leave
      t.references :user, foreign_key: true
      t.references :leave, foreign_key: true

      t.timestamps
    end
  end
end
