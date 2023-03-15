class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :leaves do |t|
      t.string :leave_type
      t.string :total_allocate_leave
      t.string :used_leave
      t.string :available_leave
      t.datetime :time
      t.references :user, foreign_key: true



      t.timestamps
    end
  end
end
