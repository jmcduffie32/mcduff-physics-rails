class CreateProblemParts < ActiveRecord::Migration
  def change
    create_table :problem_parts do |t|
      t.text :statement
      t.float :answer

      t.timestamps null: false
    end
  end
end
