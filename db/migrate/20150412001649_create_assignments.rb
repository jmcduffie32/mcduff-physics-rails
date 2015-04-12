class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :hw_id
      t.integer :class_id
      t.integer :problem_id

      t.timestamps null: false
    end
  end
end
